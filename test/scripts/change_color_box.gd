extends CSGBox3D

var state: String = "green"
var interactable: Interactable

func _ready() -> void:
	interactable = Interactable.new()
	interactable.action_message = "Change color"

func interact() -> void:
	if state == "green":
		material.set_shader_parameter("albedo", Color("ff6f61"))
		state = "red"
	else:
		material.set_shader_parameter("albedo", Color("00c271"))
		state = "green"
