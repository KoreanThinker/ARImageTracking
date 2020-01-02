using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DataBase : MonoBehaviour
{
    // Start is called before the first frame update
    public static DataBase DB = null;
    public GameObject[] models;
    public string[] names;
    public string[] descriptions;

    public bool rotateHorizontal;
    public bool rotateVertical;
    public bool zoomAble;
    public bool rotateFix;
    public float fixSmooth;
    public float fixDelay;

    void Awake()
    {
        if (DB == null)
        {
            DB = this;
        }
        else if (DB != this)
        {
            Destroy(gameObject);
        }
        DontDestroyOnLoad(gameObject);
    }


    public GameObject Get3DModel(string key)
    {
        return models[key2index(key)];
    }
    public string GetDescription(string key)
    {
        return descriptions[key2index(key)];
    }


    private int key2index(string key)
    {
        for (int i = 0; i < names.Length; i++)
        {
            if (names[i] == key) return i;
        }
        return 0;
    }
}
