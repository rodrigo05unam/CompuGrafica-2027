#version 330 core  //
in vec3 ourColor; //

out vec4 color; //se devuelve color de 4 elementos

void main()
{
	color = vec4(ourColor, 1.0f);
}