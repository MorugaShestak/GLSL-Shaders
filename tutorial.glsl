#version 300 es

#define PI 3.14159265358979323846264338327950288419716939937510582

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
	vec2 uv = fragCoord / vec2( iResolution.x, iResolution.y ) * 2.0 - 1.0;
	uv.x = uv.x * iResolution.x / iResolution.y;

    float d = length( uv );

    fragColor = vec4(0.0, 0.0, 0.0, 1.0);

    d = sin(d*0.5 + iTime)/PI*sqrt(d);
    d = abs(d);

    d = step(0.1, d);

	fragColor = vec4(d, d,d, 1);
}