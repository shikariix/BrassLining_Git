using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BlockGrid : MonoBehaviour {

    private GameObject[] borderObjs;
    public List<Vector3> borders = new List<Vector3>();

	// Use this for initialization
	void Start () {
        UpdateList();
	}

    public void UpdateList() {
        borders.Clear();
        borderObjs = GameObject.FindGameObjectsWithTag("BlockConstraint");
        foreach (GameObject obj in borderObjs) {
            borders.Add(obj.transform.position);
        }
    }
}
