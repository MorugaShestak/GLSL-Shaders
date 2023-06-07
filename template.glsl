#version 300 es

#define PI 3.14159265358979323846264338327950288419716939937510582

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
	vec2 uv = fragCoord / vec2( iResolution.x, iResolution.y ) * 2.0 - 1.0;
	uv.x = uv.x * iResolution.x / iResolution.y;

	fragColor = vec4(0.0, 0.0, 0.0, 1);
}