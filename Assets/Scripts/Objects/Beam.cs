using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Beam : MonoBehaviour {
    
    public Transform lineBase;

    public int laserDistance = 100; //max raycasting distance
    public int laserLimit = 10; //the laser can be reflected this many times
    public LineRenderer laserRenderer; //the line renderer

    private Target target;
        

    // Use this for initialization
    void Start () {
        DrawLaser();
    }

    public void UpdateBeam() {
        DrawLaser();
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
                vertexCounter += 2;
                laserRenderer.positionCount = vertexCounter;
                laserRenderer.SetPosition(vertexCounter - 2, Vector3.MoveTowards(hit.point, lastLaserPosition, 0.01f));
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
                    Debug.Log("Didn't hit target yet - keep trying.");
                }

                loopActive = false;
            }
            if (laserReflected > laserLimit)
                loopActive = false;
        }
    }
}
