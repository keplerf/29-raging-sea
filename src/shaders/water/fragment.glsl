uniform vec3 uDephColor;
uniform vec3 uSurfaceColor;
uniform float uColorOffset;
uniform float uColorMultiplier;

varying float vElavation;

void main() {
  float mixStrenght = (vElavation + uColorOffset) * uColorMultiplier;
  vec3 color = mix(uDephColor, uSurfaceColor, mixStrenght);
  gl_FragColor = vec4(color, 1);
}