using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour {

    public Transform target;
    public bool followPlayer;

    private Vector3 currentPosition;
    private Vector3 targetPosition;
    private float distance;

	void FixedUpdate () {

        if (followPlayer) { 
            //Follow player over x-axis
            targetPosition = target.localPosition;
            if (targetPosition.x < 4 && targetPosition.x > -4) {
                currentPosition = transform.position;
                distance = currentPosition.x - target.position.x;
                currentPosition.x -= distance;
            }
            transform.position = Vector3.Lerp(transform.position, currentPosition, 0.01f);
        }

    }
}
