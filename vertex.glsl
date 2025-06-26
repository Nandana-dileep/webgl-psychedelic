#version 300 es

in vec4 position;
in vec4 color;

uniform float seconds;
uniform mat4 u_matrix;

out vec4 vColor;

void main() {
    vColor = color/position.x;
    gl_Position = position;
}