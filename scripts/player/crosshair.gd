extends Control

@onready var head_raycast: RayCast3D = $"../../Head/Camera3D/RayCast3D"

@export var DOT_RADIUS: float = 2.0
@export var DOT_DEFAULT_COLOR: Color = Color.WHITE
@export var DOT_COLLIDING_COLOR: Color = Color.RED

var HEAD_RAYCAST_COLLIDING: bool = false

func _ready() -> void:
	head_raycast.connect("colliding", toogle_raycast)
	head_raycast.connect("colliding", toogle_raycast)

func _process(delta: float) -> void:
	queue_redraw()

func _draw() -> void:
	var draw_color: Color = DOT_COLLIDING_COLOR if HEAD_RAYCAST_COLLIDING else DOT_DEFAULT_COLOR
	draw_circle(get_viewport_rect().size / 2, DOT_RADIUS, draw_color)

func toogle_raycast(value: bool) -> void:
	HEAD_RAYCAST_COLLIDING = value
