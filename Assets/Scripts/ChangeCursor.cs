using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeCursor : MonoBehaviour {

	void Start() {
        Cursor.SetCursor(null, Vector2.zero, CursorMode.Auto);
    }

    public void CursorLoading() {

        Cursor.SetCursor(null, Vector2.zero, CursorMode.Auto);
    }
}
