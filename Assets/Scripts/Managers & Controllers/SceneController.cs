using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneController : MonoBehaviour {

    public void StartGame() {
        SceneManager.LoadScene("Captains_Room");
    }

    public void Captains_Room() {
        SceneManager.LoadScene("Captains_Room");
    }

    public void Library() {
        SceneManager.LoadScene("Library");
    }

    public void Puzzle_1() {
        SceneManager.LoadScene("Puzzle_1");
    }
    
    public void ExitGame() {
        Application.Quit();
    }

    public void MainMenu() {
        SceneManager.LoadScene("Menu");
    }

    void Update() {
        if (Input.GetKeyDown(KeyCode.Escape)) {
            PauseGame();
        }
    }

    public void PauseGame() {
        SceneManager.LoadScene("PauseMenu", LoadSceneMode.Additive);
    }
}
