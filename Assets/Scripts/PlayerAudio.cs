using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAudio : MonoBehaviour {

	private AudioSource sound;
    private AudioClip tempSound;

    public string clipName;
    public int clipAmount;

	private void Start() {
		sound = GetComponent<AudioSource>();
	}

	public void StepSound() {
        int randomValue = Random.Range(1, clipAmount + 1);
        sound.clip = Resources.Load("Audio/" + clipName + " " + randomValue) as AudioClip;
        sound.Play();
	}
}
