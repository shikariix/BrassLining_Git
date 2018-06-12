using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Target : MonoBehaviour {

    public Elevator elevator;

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
        GetComponent<AudioSource>().Play();
        elevator.OpenFence();
    }
}
