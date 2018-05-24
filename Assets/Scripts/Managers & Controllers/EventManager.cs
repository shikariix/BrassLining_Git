using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EventManager : MonoBehaviour {


    public delegate void TargetEvent();
    public static event TargetEvent OnTargetHit;

    public static void TargetHit() {
        OnTargetHit();
    }
}
