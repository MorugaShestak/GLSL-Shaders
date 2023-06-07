#version 300 es

// https://www.shadertoy.com/view/DtKSRG

#define PI 3.14159265358979323846264338327950288419716939937510582

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
	vec2 uv = fragCoord / vec2( iResolution.x, iResolution.y ) * 2.0 - 1.0;
	uv.x = uv.x * iResolution.x / iResolution.y;

    float a, b, c = 0.0;
    a = 1.0; // r var
    b = 1.0; // g var
    c = 0.1; // b var
    
    float d = length( uv )*0.5;
    d = cos(d)*iTime/d;

    fragColor = vec4(d*a, d*b, d*c, 1.0); // multiple circle distance by amount of color we want. Changing a, b & c variables change the color.
}