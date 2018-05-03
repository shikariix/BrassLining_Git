using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Block : MonoBehaviour {

    private enum Direction {
        Up,
        Down,
        Left,
        Right
    }
    private Direction direction;
    private bool isMoving = false;

    private Vector3 newRotation;
    private Vector3 oldPosition;
    private Vector3 newPosition;
    private float step = 0;

    private Vector3 playerPosition;
    private Vector3 dist;

    public Rigidbody rb;
    public Beam beam;

    public float force;
    
    void Start() {
        newPosition = transform.position;
        oldPosition = transform.position;
    }
	
	// Update is called once per frame
	void FixedUpdate () {

        if (isMoving) {
            transform.Rotate(newRotation, Space.World);
            step += 0.03f;
            transform.position = Vector3.Lerp(oldPosition, newPosition, step);
        } else {
            step = 0;
        }
    }
    
    void OnTriggerStay(Collider col) {
        try { 
            //set the direction based on position of player
            if (col.tag == "Player") { 
                dist = (transform.position - col.transform.position).normalized;
                Debug.Log(dist);

                if (Input.GetButtonDown("Fire1") && !isMoving) {
                    isMoving = true;
                    if (dist.z < 0 && dist.x < 0.5f && dist.x > -0.5f) {
                        StartCoroutine(Move(Direction.Down));
                    }
                    else if (dist.z > 0 && dist.x < 0.5f && dist.x > -0.5f) {
                        StartCoroutine(Move(Direction.Up));
                    }
                    else if (dist.x > 0 && dist.z < 0.5f && dist.z > -0.5f) {
                        StartCoroutine(Move(Direction.Right));
                    }
                    else if (dist.x < 0 && dist.z < 0.5f && dist.z > -0.5f) {
                        StartCoroutine(Move(Direction.Left));
                    }
                }
            }
        } catch(Exception e) {
            Debug.Log("Collision exception caught.");
        }
    }

    IEnumerator Move(Direction dir) {
        newPosition = transform.position;
        oldPosition = transform.position;
        newRotation = Vector3.zero;
        switch (dir) {
            case Direction.Up:
                newPosition.z += 1;
                newRotation.x = 3;
                break;
            case Direction.Down:
                newPosition.z -= 1;
                newRotation.x = -3;
                break;
            case Direction.Left:
                newPosition.x -= 1;
                newRotation.z = 3;
                break;
            case Direction.Right:
                newPosition.x += 1;
                newRotation.z = -3;
                break;
            default:
                break;
        }

        beam.UpdateBeam();
        yield return new WaitForSeconds(0.5f);
        isMoving = false;

        //snap rotation
        float xRotation = transform.eulerAngles.x;
        xRotation = Mathf.Round(xRotation / 90) * 90;
        float yRotation = transform.eulerAngles.y;
        yRotation = Mathf.Round(yRotation / 90) * 90;
        float zRotation = transform.eulerAngles.z;
        zRotation = Mathf.Round(zRotation / 90) * 90;
        transform.eulerAngles = new Vector3(xRotation, yRotation, zRotation);
    }
}
