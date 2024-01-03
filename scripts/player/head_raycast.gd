extends RayCast3D

signal colliding

func _process(delta: float) -> void:
	if is_colliding(): 
		colliding.emit(true)
	else:
		colliding.emit(false)
