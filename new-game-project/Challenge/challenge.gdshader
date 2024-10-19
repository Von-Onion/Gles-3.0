shader_type canvas_item;

uniform vec3 custom_color: source_color = vec3(0.5);
uniform vec2 center = vec2(0.5); 
uniform float radius: hint_range(0.0, 1.0) = 0.5;
uniform float width: hint_range(0.0, 0.3) = 0.05;

void fragment() {
	float alpha = step(distance(center, UV), radius);
	float inner_alpha = step(distance(center, UV), radius - width);
	COLOR.rgb = custom_color;
	COLOR.a = alpha - inner_alpha;
}


