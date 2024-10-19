shader_type canvas_item;

uniform float progress: hint_range(0.0, 1.0) = 0.5;

void fragment() {
	//if(UV.x >= 0.5){
		//COLOR.a = 1.0;
	//} else{
		//COLOR.a = 0.0;
	//}
	
	//ternery Operator
	//COLOR.a = UV.x >= 0.5 ? 1.0 : 0.0;
	
	//step
	COLOR.a = step(progress, UV.x);
}


