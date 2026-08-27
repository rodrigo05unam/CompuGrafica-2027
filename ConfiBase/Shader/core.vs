#version 330 core
layout (location = 0) in vec3 position; //variables de entrada
layout (location = 1) in vec3 color; //valor de entrada de 3 elementos

out vec3 ourColor; //variable de salida

void main()
{
    gl_Position = vec4(position, 1.0f);  //recibe posicion y color
    ourColor = color;
}