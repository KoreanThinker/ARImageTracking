xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 50;
 -0.11337;0.01183;-0.05028;,
 0.11337;0.01183;-0.05028;,
 0.11337;-0.00352;-0.05028;,
 -0.11337;-0.00352;-0.05028;,
 0.11337;0.01183;-0.05028;,
 0.11337;0.01183;0.05028;,
 0.11337;-0.00352;0.05028;,
 0.11337;-0.00352;-0.05028;,
 0.11337;0.01183;0.05028;,
 -0.11337;0.01183;0.05028;,
 -0.11337;-0.00352;0.05028;,
 0.11337;-0.00352;0.05028;,
 -0.11337;0.01183;0.05028;,
 -0.11337;0.01183;-0.05028;,
 -0.11337;-0.00352;-0.05028;,
 -0.11337;-0.00352;0.05028;,
 0.11337;0.01183;-0.05028;,
 -0.11337;0.01183;-0.05028;,
 -0.11337;-0.00352;-0.05028;,
 0.11337;-0.00352;-0.05028;,
 -0.01288;0.01298;-0.05155;,
 0.01288;0.01298;-0.05155;,
 0.01288;-0.00466;-0.05155;,
 -0.01288;-0.00466;-0.05155;,
 0.01288;0.01298;-0.05155;,
 0.01288;0.01298;0.05155;,
 0.01288;-0.00466;0.05155;,
 0.01288;-0.00466;-0.05155;,
 0.01288;0.01298;0.05155;,
 -0.01288;0.01298;0.05155;,
 -0.01288;-0.00466;0.05155;,
 0.01288;-0.00466;0.05155;,
 -0.01288;0.01298;0.05155;,
 -0.01288;0.01298;-0.05155;,
 -0.01288;-0.00466;-0.05155;,
 -0.01288;-0.00466;0.05155;,
 0.01288;0.01298;-0.05155;,
 -0.01288;0.01298;-0.05155;,
 -0.01288;-0.00466;-0.05155;,
 0.01288;-0.00466;-0.05155;,
 0.06896;0.01740;0.04484;,
 0.10308;0.03237;0.03144;,
 0.10685;0.01740;0.00030;,
 0.11280;0.01144;-0.02914;,
 0.11280;0.01144;-0.04978;,
 -0.11280;0.01144;-0.04978;,
 0.05332;0.01144;0.03833;,
 0.04322;0.01144;0.04978;,
 -0.11280;0.01144;0.04978;,
 0.08786;0.01144;-0.00085;;
 
 22;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;12,5,16,17;,
 4;18,19,6,15;,
 4;20,21,22,23;,
 4;24,25,26,27;,
 4;28,29,30,31;,
 4;32,33,34,35;,
 4;32,25,36,37;,
 4;38,39,26,35;,
 3;40,41,42;,
 3;42,41,40;,
 4;43,44,45,46;,
 4;43,46,40,42;,
 3;47,40,46;,
 4;47,46,45,48;,
 4;47,48,45,49;,
 4;47,49,42,40;,
 3;43,42,49;,
 4;43,49,45,44;;
 
 MeshMaterialList {
  3;
  22;
  0,
  0,
  0,
  0,
  1,
  1,
  2,
  2,
  2,
  2,
  2,
  2,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;;
  Material {
   0.467200;0.460800;0.420000;1.000000;;
   14.000000;
   0.320000;0.320000;0.320000;;
   0.169360;0.167040;0.152250;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   14.000000;
   0.320000;0.320000;0.320000;;
   0.290000;0.290000;0.290000;;
   TextureFilename {
    "miku-dollar.bmp";
   }
  }
  Material {
   0.674400;0.649600;0.571200;1.000000;;
   14.000000;
   0.320000;0.320000;0.320000;;
   0.244470;0.235480;0.207060;;
  }
 }
 MeshNormals {
  18;
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  -0.498341;0.756348;-0.423785;,
  -0.347994;0.888144;-0.300168;,
  -0.390174;0.858029;-0.333992;,
  -0.132587;0.984251;-0.116925;,
  -0.135004;0.983795;-0.117991;,
  -0.137422;0.983331;-0.119057;,
  0.138922;-0.982837;0.121373;,
  -1.000000;0.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.352738;-0.884873;0.304261;,
  0.498341;-0.756348;0.423785;,
  0.389778;-0.858387;0.333534;,
  0.136959;-0.983458;0.118542;,
  0.140885;-0.982204;0.124207;;
  22;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;11,11,11,11;,
  4;3,3,3,3;,
  4;12,12,12,12;,
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;11,11,11,11;,
  4;3,3,3,3;,
  4;12,12,12,12;,
  3;5,4,6;,
  3;13,14,15;,
  4;9,3,3,8;,
  4;9,8,5,6;,
  3;7,5,8;,
  4;7,8,3,3;,
  4;16,12,12,10;,
  4;16,10,13,15;,
  3;17,13,10;,
  4;17,10,12,12;;
 }
 MeshTextureCoords {
  50;
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.832090;0.000000;,
  1.000000;0.000000;,
  1.000000;0.447400;,
  1.000000;0.792670;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.736360;0.115050;,
  0.691580;0.000000;,
  0.000000;0.000000;,
  0.889430;0.508500;;
 }
 MeshVertexColors {
  50;
  0;1.000000;1.000000;1.000000;1.000000;,
  1;1.000000;1.000000;1.000000;1.000000;,
  2;1.000000;1.000000;1.000000;1.000000;,
  3;1.000000;1.000000;1.000000;1.000000;,
  4;1.000000;1.000000;1.000000;1.000000;,
  5;1.000000;1.000000;1.000000;1.000000;,
  6;1.000000;1.000000;1.000000;1.000000;,
  7;1.000000;1.000000;1.000000;1.000000;,
  8;1.000000;1.000000;1.000000;1.000000;,
  9;1.000000;1.000000;1.000000;1.000000;,
  10;1.000000;1.000000;1.000000;1.000000;,
  11;1.000000;1.000000;1.000000;1.000000;,
  12;1.000000;1.000000;1.000000;1.000000;,
  13;1.000000;1.000000;1.000000;1.000000;,
  14;1.000000;1.000000;1.000000;1.000000;,
  15;1.000000;1.000000;1.000000;1.000000;,
  16;1.000000;1.000000;1.000000;1.000000;,
  17;1.000000;1.000000;1.000000;1.000000;,
  18;1.000000;1.000000;1.000000;1.000000;,
  19;1.000000;1.000000;1.000000;1.000000;,
  20;1.000000;1.000000;1.000000;1.000000;,
  21;1.000000;1.000000;1.000000;1.000000;,
  22;1.000000;1.000000;1.000000;1.000000;,
  23;1.000000;1.000000;1.000000;1.000000;,
  24;1.000000;1.000000;1.000000;1.000000;,
  25;1.000000;1.000000;1.000000;1.000000;,
  26;1.000000;1.000000;1.000000;1.000000;,
  27;1.000000;1.000000;1.000000;1.000000;,
  28;1.000000;1.000000;1.000000;1.000000;,
  29;1.000000;1.000000;1.000000;1.000000;,
  30;1.000000;1.000000;1.000000;1.000000;,
  31;1.000000;1.000000;1.000000;1.000000;,
  32;1.000000;1.000000;1.000000;1.000000;,
  33;1.000000;1.000000;1.000000;1.000000;,
  34;1.000000;1.000000;1.000000;1.000000;,
  35;1.000000;1.000000;1.000000;1.000000;,
  36;1.000000;1.000000;1.000000;1.000000;,
  37;1.000000;1.000000;1.000000;1.000000;,
  38;1.000000;1.000000;1.000000;1.000000;,
  39;1.000000;1.000000;1.000000;1.000000;,
  40;1.000000;1.000000;1.000000;1.000000;,
  41;1.000000;1.000000;1.000000;1.000000;,
  42;1.000000;1.000000;1.000000;1.000000;,
  43;1.000000;1.000000;1.000000;1.000000;,
  44;1.000000;1.000000;1.000000;1.000000;,
  45;1.000000;1.000000;1.000000;1.000000;,
  46;1.000000;1.000000;1.000000;1.000000;,
  47;1.000000;1.000000;1.000000;1.000000;,
  48;1.000000;1.000000;1.000000;1.000000;,
  49;1.000000;1.000000;1.000000;1.000000;;
 }
}