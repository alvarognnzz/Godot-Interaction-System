extends CSGBox3D

@export var action_key: String = "interact"
@export var action_key_tooltip: String = "E"
@export var action_message: String = "Hide box"

func get_prompt() -> String:
	return "[%s] %s" % [action_key_tooltip, action_message]

func interact() -> void:
	if action_message == "Hide box":
		hide()
		action_message = "Unhide box"
	else:
		show()
		action_message = "Hide box"
