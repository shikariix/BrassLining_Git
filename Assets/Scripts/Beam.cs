using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Beam : MonoBehaviour {

    public LineRenderer lineRenderer;
    public Transform lineBase;
    
    // Bit shift the index of the layer (8) to get a bit mask
    int layerMask = 1 << 8;

    // Use this for initialization
    void Start () {
        // This would cast rays only against colliders in layer 8.
        // But instead we want to collide against everything except layer 8. The ~ operator does this, it inverts a bitmask.
        layerMask = ~layerMask;

        lineRenderer.SetPosition(0, lineBase.position);
        lineRenderer.SetPosition(1, -lineBase.right * 25);
    }

    public void UpdateBeam() {
        Ray hitRay = new Ray(lineBase.position, -lineBase.right);
        RaycastHit hit;
        if (Physics.Raycast(hitRay.origin, hitRay.direction, out hit, 25, layerMask)) {
            if (hit.collider.tag == "MirrorBlock") {
                AddLinePosition(transform.TransformPoint(hit.collider.gameObject.transform.position),
                                hit.collider.gameObject.transform.rotation.eulerAngles);
            }
            else {
                RemoveLinePosition(transform.TransformPoint(hit.collider.gameObject.transform.position));
                Debug.Log("No Mirror is hit.");
            }
        }
    }

    void AddLinePosition(Vector3 newPosition, Vector3 angle) {
        lineRenderer.positionCount++;
        int currentIndex = lineRenderer.positionCount - 1;
        lineRenderer.SetPosition(currentIndex, lineRenderer.GetPosition(currentIndex-1));
        newPosition.y = newPosition.y - 1f;
        lineRenderer.SetPosition(currentIndex - 1, transform.TransformPoint(newPosition));
        Debug.Log(angle);
    }

    void RemoveLinePosition(Vector3 oldPosition) {
        lineRenderer.SetPosition(lineRenderer.positionCount - 2, lineRenderer.GetPosition(lineRenderer.positionCount - 1));
        lineRenderer.positionCount--;
    }
}
