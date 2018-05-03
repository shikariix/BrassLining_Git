using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Elevator : MonoBehaviour {

    public SceneController sceneController;

    [SerializeField]
    private string targetScene;

    void OnCollisionStay(Collision col) {
        if (col.gameObject.tag == "Player" && Input.GetButtonDown("Fire1")) {
            sceneController.SendMessage(targetScene);
        }
    }

}
