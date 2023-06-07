#version 300 es

#define PI 3.14159265358979323846264338327950288419716939937510582

uniform vec3      iResolution;
uniform float     iTime;
uniform float     iTimeDelta;
uniform float     iFrameRate;
uniform int       iFrame;
uniform float     iChannelTime[4];
uniform vec3      iChannelResolution[4];
uniform vec4      iMouse;
uniform sampler2D iChannel0, iChannel1, iChannel2, iChannel3;
uniform vec4      iDate;