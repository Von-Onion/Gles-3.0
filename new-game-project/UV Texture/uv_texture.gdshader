shader_type canvas_item;

uniform float offset: hint_range(0.0, 1.0) = 0.0;
uniform sampler2D gradient_texture;

void fragment() {
	//COLOR.r = UV.x;
	//COLOR.b = UV.y;
	
	vec4 gradient_color = texture(gradient_texture, UV);
	COLOR = gradient_color;
	
	float original_alpha = texture(TEXTURE, UV).a;
	COLOR.a = original_alpha * (UV.y - offset);
}