extends Control

@onready var interactor: RayCast3D = $"../../Head/Camera3D/Interactor"

@export var DOT_RADIUS: float = 2.0
@export var DOT_COLOR: Color = Color.WHITE

var HEAD_RAYCAST_COLLIDING: bool = false

func _ready() -> void:
	interactor.connect("colliding", toogle_raycast)
	interactor.connect("colliding", toogle_raycast)
	queue_redraw()

func _process(delta: float) -> void:
	if HEAD_RAYCAST_COLLIDING:
		hide()
	else:
		show()

func _draw() -> void:
	draw_circle(get_viewport_rect().size / 2, DOT_RADIUS, DOT_COLOR)

func toogle_raycast(value: bool) -> void:
	HEAD_RAYCAST_COLLIDING = value
