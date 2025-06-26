#version 300 es
precision highp float;

in vec4 vColor;

uniform float seconds;

out vec4 fragColor;

void main() {
    float c = cos(seconds)*0.5+0.5, s = sin(seconds)*0.5+0.5;

    vec2 center = gl_FragCoord.xy;
    
    float sec = 100.0* seconds;
    center.x=-cos(10.12*sin(sec*200.0));
    center.y=sin(10.12*cos(sec*200.0));
    if (cos(gl_FragCoord.x / sin(sec/1000.0)) + sin(gl_FragCoord.y / cos(sec/1000.0)) > 0.9 ) {
        center.x = 0.0;
        

    }
    fragColor = vec4(cos(center.x), sin(center.x), cos(center.x), 1);
}