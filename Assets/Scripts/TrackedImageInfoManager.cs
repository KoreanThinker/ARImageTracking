using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.ARFoundation;
using UnityEngine.SceneManagement;

[RequireComponent(typeof(ARTrackedImageManager))]
public class TrackedImageInfoManager : MonoBehaviour
{
    private ARTrackedImageManager m_TrackedImageManager;


    void Awake()
    {
        m_TrackedImageManager = GetComponent<ARTrackedImageManager>();
    }

    void OnTrackedImagesChanged(ARTrackedImagesChangedEventArgs eventArgs)
    {
        foreach (var trackedImage in eventArgs.added)
        {
            trackedImage.destroyOnRemoval = true;
            Debug.Log(trackedImage.referenceImage.name);
            GameObject instante = Instantiate(DataBase.DB.Get3DModel(trackedImage.referenceImage.name), trackedImage.transform) as GameObject;
            instante.AddComponent<ARObjRotation>();
        }
        foreach (var trackedImage in eventArgs.updated)
        {

        }
        foreach (var trackedImage in eventArgs.removed)
        {
            Debug.Log("REMOVED");
        }
    }
    void OnEnable()
    {
        m_TrackedImageManager.trackedImagesChanged += OnTrackedImagesChanged;
    }

    void OnDisable()
    {
        m_TrackedImageManager.trackedImagesChanged -= OnTrackedImagesChanged;
    }
    public void Reload()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

}

class ARObjRotation : MonoBehaviour
{

    private Quaternion myRot;
    private float rotX;
    private float rotY;
    private bool isDown = true;
    private bool isX = false;
    private bool isY = false;
    private bool isFix = false;
    private float rotSpeed = 250;
    private float fixDelay = 2.0f;
    private float fixSmooth = 150;

    private void Awake()
    {
        //myRot지정
        myRot = transform.rotation;
        //DataBase와 연동
        isX = DataBase.DB.rotateHorizontal;
        isY = DataBase.DB.rotateVertical;
        isFix = DataBase.DB.rotateFix;
        fixSmooth = DataBase.DB.fixSmooth;
        fixDelay = DataBase.DB.fixDelay;
    }

    private void OnMouseDrag()
    {
        isDown = true;
        StopAllCoroutines();

        if (isX)
        {
            rotX = Input.GetAxis("Mouse X") * rotSpeed * Mathf.Deg2Rad;
            transform.Rotate(Vector3.up, -rotX, Space.Self);
        }
        if (isY)
        {
            rotY = Input.GetAxis("Mouse Y") * rotSpeed * Mathf.Deg2Rad;
            transform.Rotate(Vector3.right, rotY, Space.Self);
        }
        if (isFix)
        {
            StartCoroutine(FixRot());
        }
    }
    IEnumerator FixRot()
    {
        yield return new WaitForSeconds(fixDelay);
        isDown = false;
    }
    private void Update()
    {
        if (!isDown)
        {
            transform.localRotation = Quaternion.RotateTowards(transform.localRotation, myRot, fixSmooth * Time.deltaTime);
        }
    }
}