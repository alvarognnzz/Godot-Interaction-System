extends Label

@onready var interactor: RayCast3D = $"../../Head/Camera3D/Interactor"

var INTERACTOR_COLLIDING: bool = false

func _ready() -> void:
	interactor.connect("colliding", toogle_raycast)
	interactor.connect("prompt", set_prompt)

func _process(delta: float) -> void:
	if INTERACTOR_COLLIDING:
		show()
	else:
		hide()

func toogle_raycast(value: bool) -> void:
	INTERACTOR_COLLIDING = value

func set_prompt(prompt: String) -> void:
	text = prompt
