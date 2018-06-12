using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ControlsCanvas : MonoBehaviour {

    public Image image;
    
    public static ControlsCanvas _instance;

    void Awake() {
        if (_instance == null) {
            _instance = this;
            DontDestroyOnLoad(gameObject);
        }
    }

    public void GoToNext() {
        if (image.sprite == Resources.Load<Sprite>("Controls/ControlsScene") as Sprite) {
            image.sprite = Resources.Load<Sprite>("Controls/Controls2Scene") as Sprite;
        }
        else {
            GetComponent<Canvas>().enabled = false;
            image.sprite = Resources.Load<Sprite>("Controls/ControlsScene") as Sprite;
        }
    }

    void Update() {
        if (Input.GetKeyDown(KeyCode.Escape)) {
            GetComponent<Canvas>().enabled = true;
        }
    }
}
