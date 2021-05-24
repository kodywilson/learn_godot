extends Node2D


func _ready():
	pass

func _input(event):
	if event is InputEventKey and event.pressed:
		go_to_title_scene()

func go_to_title_scene():
	get_tree	().change_scene("res://scenes/TitleScreen.tscn")

func _on_AnimationPlayer_animation_finished(anim_name):
	go_to_title_scene()
