extends RayCast3D

signal colliding
signal prompt

func _process(delta: float) -> void:
	if is_colliding() and get_collider().has_method("interact"):
		start_colliding(get_collider())
	else:
		colliding.emit(false)

func start_colliding(object: Node) -> void:
	colliding.emit(true)
	prompt.emit(object.interactable.get_prompt())
	if Input.is_action_just_pressed(get_collider().interactable.action_key):
		object.interact()


