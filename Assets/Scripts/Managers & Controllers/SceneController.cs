using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneController : MonoBehaviour {
    

    public void MainMenu() {
        SceneManager.LoadScene("MainMenu");
    }

    public void StartGame() {
        SceneManager.LoadScene("Captains_Room");
    }

    public void Captains_Room() {
        SceneManager.LoadScene("Captains_Room");
    }

    public void Library() {
        SceneManager.LoadScene("Library");
    }
    
    public void Kitchen() {
        SceneManager.LoadScene("Kitchen");
    }

    public void Puzzle_1() {
        SceneManager.LoadScene("Puzzle_1");
    }

    public void Puzzle_2() {
        SceneManager.LoadScene("Puzzle_2");
    }

    public void Puzzle_3() {
        SceneManager.LoadScene("Puzzle_3");
    }

    public void Credits() {
        SceneManager.LoadScene("Credits");
    }
    
    public void Captains_Room_End() {
        SceneManager.LoadScene("Captains_Room_End");
    }

    public void ExitGame() {
        Application.Quit();
    }
}
