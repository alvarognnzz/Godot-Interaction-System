extends RayCast3D

signal colliding

func _process(delta: float) -> void:
	if is_colliding() and get_collider().has_method("interact"): 
		colliding.emit(true)
	else:
		colliding.emit(false)
