using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Elevator : MonoBehaviour {

    public SceneController sceneController;
    public Animator anim;
    public Animator fadeToBlack;

    [SerializeField]
    private string targetScene;

    void OnCollisionStay(Collision col) {
        if (col.gameObject.tag == "Player" && Input.GetButtonDown("Fire1")) {
            StartCoroutine("ChangeScene");
        }
    }
    IEnumerator ChangeScene() {
        fadeToBlack.Play("FadeToBlack");
        yield return new WaitForSeconds(1.5f);
        sceneController.SendMessage(targetScene);
    }
    public void OpenFence() {
        anim.SetTrigger("Open");
    }

    public void CloseFence() {
        anim.SetTrigger("Close");
    }

}
