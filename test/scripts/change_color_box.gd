extends CSGBox3D

@export var action_key: String = "interact"
@export var action_key_tooltip: String = "E"
@export var action_message: String = "Change color"
var state: String = "green"

func get_prompt() -> String:
	return "[%s] %s" % [action_key_tooltip, action_message]

func interact() -> void:
	if state == "green":
		material.set_shader_parameter("albedo", Color("ff6f61"))
		state = "red"
	else:
		material.set_shader_parameter("albedo", Color("00c271"))
		state = "green"
