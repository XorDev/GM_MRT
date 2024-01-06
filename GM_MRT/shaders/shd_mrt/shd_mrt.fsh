varying vec2 v_coord;
varying vec4 v_color;

void main()
{
	//Output 0 (red)
	gl_FragData[0] = vec4(1,0,0,1);
	//Output 1 (green)
	gl_FragData[1] = vec4(0,1,0,1);
	//Output 2 (blue)
	gl_FragData[2] = vec4(0,0,1,1);
	//Output 0 (white)
	gl_FragData[3] = vec4(1,1,1,1);
}