using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Block : MonoBehaviour {

    //Variables related to motion
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


    //Variables related to pushing mechanic
    private GameObject player;
    private float distance;
    private Vector3 dist;

    //Variables related to beam bending
    private Beam beam;

	//Audio variables
	private AudioSource audio;

    void OnEnable() {
        player = GameObject.FindWithTag("Player");
        beam = GameObject.FindWithTag("Beam").GetComponent<Beam>();
        newPosition = transform.position;
        oldPosition = transform.position;

		//Set audio source
		audio = GetComponent<AudioSource>();
    }
	
	// Update is called once per frame
	void FixedUpdate () {
        if (isMoving) {
            transform.Rotate(newRotation, Space.World);
            if (step < 1) { 
                step += 0.05f;
            } else {
                step = 1;
            }
            transform.position = Vector3.Lerp(oldPosition, newPosition, step);
        } else {
            step = 0;

        }

        distance = Vector3.Distance(transform.position, player.transform.position);
        if (distance < 1.2) {
            AllowBlockPushing();
        }
    }
    
    void AllowBlockPushing() {
        //set the direction based on position of player
        dist = (transform.position - player.transform.position).normalized;

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


        yield return new WaitForSeconds(0.5f);
        isMoving = false;

		/*
		//pick 1 of 4 random generated noises
		int randomSound = UnityEngine.Random.Range(0, 4);
		switch (randomSound) {
		case 0:
			audio.audioClip.name = "block 1";
			break;
		case 1:
			audio.audioClip.name = "block 2";
			break;
		case 2:
			audio.audioClip.name = "block 3";
			break;
		case 3: 
			audio.audioClip.name = "block 4";
			break;
		default:
			audio.audioClip.name = "block 1";
			break;
		}*/

		//make some noise
		audio.Play();

        //snap rotation
        float xRotation = transform.eulerAngles.x;
        xRotation = Mathf.Round(xRotation / 90) * 90;
        float yRotation = transform.eulerAngles.y;
        yRotation = Mathf.Round(yRotation / 90) * 90;
        float zRotation = transform.eulerAngles.z;
        zRotation = Mathf.Round(zRotation / 90) * 90;
        transform.eulerAngles = new Vector3(xRotation, yRotation, zRotation);
        beam.UpdateBeam();
    }
}
