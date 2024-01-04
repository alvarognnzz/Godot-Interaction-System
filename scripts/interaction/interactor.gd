extends RayCast3D

signal colliding
signal prompt

func _process(delta: float) -> void:
	if is_colliding() and get_collider().has_method("interact"): 
		colliding.emit(true)
		prompt.emit(get_collider().get_prompt())
		if Input.is_action_just_pressed(get_collider().action_key):
			get_collider().interact()
	else:
		colliding.emit(false)
