# ARImageTracking
UNITY 3D를 이용하여 2D 이미지 스캔시 3D 오브젝트로 출력

# 기능들

- 2D이미지 클립 스캔후 3D오브젝트 출력

    ![AR](https://github.com/KoreanThinker/ARImageTracking/blob/master/Gifs/1.gif?raw=true)
    
- Horizontal 회전

    ![AR](https://github.com/KoreanThinker/ARImageTracking/blob/master/Gifs/2.gif?raw=true)

- Horizontal & Vertical 회전

    ![AR](https://github.com/KoreanThinker/ARImageTracking/blob/master/Gifs/3.gif?raw=true)

- 회전 복귀

    ![AR](https://github.com/KoreanThinker/ARImageTracking/blob/master/Gifs/4.gif?raw=true)

# 사용법

- Assets -> 2DImageClips에서 TestLibrary.asset 에다 2D이미지 클립 등록
    - **주의** name을 key로 3D오브젝트를 출력하기때문에 정확히 입력바람
    - [참고자료](https://docs.unity3d.com/Packages/com.unity.xr.arsubsystems@2.1/manual/image-tracking.html)

- MainScene 하이어러키에 Manager라는 GameObject 안에 있는 DataBase.cs 수정 (Visual script로)
    - 위에 기능들 On/Off가능
    - 3D 오브젝트 등록 가능 (prefab이여야함)
    - names는 2D 이미지 클립과 맞춰야함

# 기타

- ~~리로드 버튼을 만들었는데 작동을 안함~~