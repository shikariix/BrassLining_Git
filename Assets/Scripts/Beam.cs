using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Beam : MonoBehaviour {

    public LineRenderer lineRenderer;
    public Transform lineBase;


    public int laserDistance = 100; //max raycasting distance
    public int laserLimit = 10; //the laser can be reflected this many times
    public LineRenderer laserRenderer; //the line renderer

    private Target target;
        

    // Use this for initialization
    void Start () {
        lineRenderer.SetPosition(0, lineBase.position);
        lineRenderer.SetPosition(1, -lineBase.right * 25);

        DrawLaser();
    }

    public void UpdateBeam() {
        DrawLaser();
        /*
        //Cast a ray that checks if it hits a block
        Ray hitRay = new Ray(lineBase.position, -lineBase.right);
        RaycastHit hit;
        if (Physics.Raycast(hitRay.origin, hitRay.direction, out hit, 25, layerMask)) {
            if (hit.collider.tag == "MirrorBlock") {
                Debug.Log("Mirror hit!");
                AddLinePosition(transform.TransformPoint(hit.collider.gameObject.transform.position),
                                hit.normal);
            }
            else {
                Debug.Log("No Mirror is hit.");
            }
        }*/
    }

    void DrawLaser() {
        
        int laserReflected = 1; //How many times it got reflected
        int vertexCounter = 1; //How many line segments are there
        bool loopActive = true; //Is the reflecting loop active?
        Vector3 laserDirection = transform.right; //direction of the next laser
        Vector3 lastLaserPosition = transform.position; //origin of the next laser

        laserRenderer.positionCount = 1;
        laserRenderer.SetPosition(0, transform.position);

        while (loopActive) {
            RaycastHit hit;

            if (Physics.Raycast(lastLaserPosition, laserDirection, out hit, laserDistance) && hit.collider.tag == "MirrorBlock") {
                laserReflected++;
                vertexCounter += 3;
                laserRenderer.positionCount = vertexCounter;
                laserRenderer.SetPosition(vertexCounter - 3, Vector3.MoveTowards(hit.point, lastLaserPosition, 0.01f));
                laserRenderer.SetPosition(vertexCounter - 2, hit.point);
                laserRenderer.SetPosition(vertexCounter - 1, hit.point);
                lastLaserPosition = hit.point;
                laserDirection = Vector3.Reflect(laserDirection, hit.normal);
            } 
            else if (Physics.Raycast(lastLaserPosition, laserDirection, out hit, laserDistance) && hit.collider.tag == "Target") {
                laserReflected++;
                vertexCounter++;
                laserRenderer.positionCount = vertexCounter;
                laserRenderer.SetPosition(vertexCounter - 1, hit.point);

                target = hit.collider.gameObject.GetComponent<Target>();
                target.HitTarget();

                loopActive = false;
            }
            else {
                laserReflected++;
                vertexCounter++;
                laserRenderer.positionCount = vertexCounter;
                laserRenderer.SetPosition(vertexCounter - 1, lastLaserPosition + (laserDirection.normalized * laserDistance));

                try { 
                    target.HitTarget();
                    target = null;
                } catch (Exception e) {
                    Debug.Log("No available target.");
                }

                loopActive = false;
            }
            if (laserReflected > laserLimit)
                loopActive = false;
        }
    }


    void AddLinePosition(Vector3 newPosition, Vector3 angle) {
        lineRenderer.positionCount++;
        int currentIndex = lineRenderer.positionCount - 1;
        angle = new Vector3(0, Mathf.Round(angle.y) * 25, Mathf.Round(angle.z) * 25);
        lineRenderer.SetPosition(currentIndex, angle);
        newPosition.y = newPosition.y - 1f;
        lineRenderer.SetPosition(currentIndex - 1, transform.TransformPoint(newPosition));
        Debug.Log(angle);
    }

    void RemoveLinePosition(Vector3 oldPosition) {
        lineRenderer.SetPosition(lineRenderer.positionCount - 2, lineRenderer.GetPosition(lineRenderer.positionCount - 1));
        lineRenderer.positionCount--;
    }
}
