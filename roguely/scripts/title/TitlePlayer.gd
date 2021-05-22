extends AnimatedSprite


func _ready():
	flip_h = false

func _on_TitlePlayer_animation_finished():
	if flip_h == false:
		flip_h = true
	elif flip_h == true:
		flip_h = false
