shader_type canvas_item;

uniform vec3 custom: source_color = vec3(0.5);
uniform float custom_alpha: hint_range(0.0, 1.0) = 1.0;

void fragment() {
	vec3 color = vec3 (0.2, 0.3, 0.4);
	float alpha = 0.7;
	int test = 1;
	
	COLOR.rgb = color;
	COLOR.rgb = custom;
	COLOR.a = custom_alpha;
}