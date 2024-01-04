extends CSGBox3D

@export var action_key: String = "interact"
@export var action_key_tooltip: String = "E"
@export var action_message: String = "Move box"
var state: String = "down"

func get_prompt() -> String:
	return "[%s] %s" % [action_key_tooltip, action_message]

func interact() -> void:
	if state == "down":
		position.y += 1 
		state = "up"
	else:
		position.y -= 1
		state = "down"
