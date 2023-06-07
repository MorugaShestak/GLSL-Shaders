// https://www.shadertoy.com/view/dtGXzG

#version 300 es

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
	vec2 uv = fragCoord / vec2( iResolution.x, iResolution.y ) * 2.0 - 1.0;
	uv.x = uv.x * iResolution.x / iResolution.y;

	float turns = fragCoord.r * iResolution.x / iResolution.y;
	float r = dot(fragCoord, fragCoord);
	float a = atan(fragCoord.y, fragCoord.x);
	float d = abs(sin(fract(log(r) * (turns / 5.0) + a * 0.2)));

	fragColor = vec4(d, d, d, 1);
}