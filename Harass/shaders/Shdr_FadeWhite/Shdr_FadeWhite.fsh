//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying float fade_val;

void main()
{
	//v_vColour.r = clamp(v_vColour.r + fade_val, v_vColour.r, 255);
    gl_FragColor = (v_vColour) * texture2D( gm_BaseTexture, v_vTexcoord );
}
