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
    
    private Vector3 newPosition;
    public Transform newRotation;

    //public Animator anim;

    void Start() {
        newPosition = transform.position;
    }
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.W)) {
            Move(Direction.Up);
        } else if (Input.GetKeyDown(KeyCode.A)) {
            Move(Direction.Left);
        } else if (Input.GetKeyDown(KeyCode.S)) {
            Move(Direction.Down);
        } else if (Input.GetKeyDown(KeyCode.D)) {
            Move(Direction.Right);
        }
        transform.position = Vector3.Lerp(transform.position, newPosition, 0.3f);
        transform.rotation = Quaternion.Slerp(transform.rotation, newRotation.rotation, 0.3f);
    }

    void Move(Direction dir) {
        newPosition = transform.position;
        //newRotation.rotation = transform.rotation;
        switch (dir) {
            case Direction.Up:
                newPosition.z += 1;
                newRotation.Rotate(- 90, 0, 0);
                //anim.Play("MoveBlock_Up");
                break;
            case Direction.Down:
                newPosition.z -= 1;
                //anim.Play("MoveBlock_Down");
                newRotation.Rotate(90, 0, 0);
                break;
            case Direction.Left:
                newPosition.x -= 1;
                //anim.Play("MoveBlock_Left");
                newRotation.Rotate(0, 0, 90);
                break;
            case Direction.Right:
                newPosition.x += 1;
                //anim.Play("MoveBlock_Right");
                newRotation.Rotate(0, 0, -90);
                break;
            default:
                break;
        }
    }
}
