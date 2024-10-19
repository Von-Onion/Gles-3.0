shader_type canvas_item;

uniform float offset_x = 0.0;
uniform float strech_y = 1.0;
uniform float center_distance: hint_range(20.0, 100.0) = 50.0;

void vertex() {
	//VERTEX = VERTEX + vec2(offset_x, 0.0);
	//VERTEX.y *= strech_y * sin(TIME);
	//VERTEX.y += VERTEX.x * sin(TIME);
	VERTEX.x += sin(TIME) * center_distance;
	VERTEX.y += cos(TIME) * center_distance;
}
