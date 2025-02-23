extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#$ColorRect.material.set_shader_parameter('progress', 0.5)
	
	var tween = create_tween()
	tween.tween_property($ColorRect, "material:shader_parameter/progress", 1.0, 1).set_trans(Tween.TRANS_EXPO)
	tween.tween_property($ColorRect, "material:shader_parameter/progress", 0.0, 1).set_trans(Tween.TRANS_EXPO)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
