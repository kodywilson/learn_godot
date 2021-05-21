extends Camera2D

onready var target = get_parent().get_node("Player")

func _process(delta):
	position = target.position
