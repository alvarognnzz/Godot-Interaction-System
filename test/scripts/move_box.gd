extends CSGBox3D

var state: String = "down"
var interactable: Interactable

func _ready() -> void:
	interactable = Interactable.new()
	interactable.action_message = "Move box"
	
func interact() -> void:
	if state == "down":
		position.y += 1 
		state = "up"
	else:
		position.y -= 1
		state = "down"
