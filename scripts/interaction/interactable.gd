class_name Interactable

var action_key: String = "interact"
var action_key_tooltip: String = "E"
var action_message: String = "Interact"

func get_prompt() -> String:
	return "[%s] %s" % [action_key_tooltip, action_message]
