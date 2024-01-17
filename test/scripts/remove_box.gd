extends CSGBox3D

var state: String = "unhided"
var interactable: Interactable

func _ready() -> void:
	interactable = Interactable.new()
	interactable.action_message = "Hide box"

func interact() -> void:
	if state == "unhided":
		hide()
		interactable.action_message = "Unhide box"
		state = "hided"
	else:
		show()
		interactable.action_message = "Hide box"
		state = "unhided"
