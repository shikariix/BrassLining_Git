using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Target : MonoBehaviour {

    public GameObject barrier;

    private bool isHit = false;

    public void HitTarget() {
        isHit = !isHit;
        EventManager.TargetHit();
    }

    void OnEnable() {
        EventManager.OnTargetHit += RemoveBarrier;
    }


    void OnDisable() {
        EventManager.OnTargetHit -= RemoveBarrier;
    }

    void RemoveBarrier() {
        barrier.SetActive(false);
    }
}
