extends Label

@onready var interactor: RayCast3D = $"../../Head/Camera3D/Interactor"

var HEAD_RAYCAST_COLLIDING: bool = false

func _ready() -> void:
	interactor.connect("colliding", toogle_raycast)
	interactor.connect("prompt", set_prompt)

func _process(delta: float) -> void:
	if HEAD_RAYCAST_COLLIDING:
		show()
	else:
		hide()

func toogle_raycast(value: bool) -> void:
	HEAD_RAYCAST_COLLIDING = value

func set_prompt(prompt: String) -> void:
	text = prompt
