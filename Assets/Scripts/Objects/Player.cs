using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour {

    private Block[] puzzleBlocks;
    private float[] blockDistance;
    private Block closestBlock;

	void Start () {
        puzzleBlocks = FindObjectsOfType<Block>();
        blockDistance = new float[puzzleBlocks.Length];
	}
	
	void Update () {
        //find the closest block by moving through all, then replacing if the distance is smaller than the previously set distance
        closestBlock = puzzleBlocks[0];
        for (int i = 0; i < puzzleBlocks.Length; i++) {
            blockDistance[i] = Vector3.Distance(transform.position, puzzleBlocks[i].transform.position);
            if (blockDistance[i] <= Vector3.Distance(transform.position, closestBlock.transform.position)) {
                closestBlock = puzzleBlocks[i];
            }
        }

        if (Input.GetButtonDown("Fire1") && Vector3.Distance(transform.position, closestBlock.transform.position) < 1.2f) {
            closestBlock.AllowBlockPushing();
        }

    }
}
