using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAudio : MonoBehaviour {

	private AudioSource sound;

	private void Start() {
		sound = GetComponent<AudioSource>();
	}

	public void StepSound() {
		sound.Play();
	}
}
