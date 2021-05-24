extends Control


#func _ready():
#	for button in $Menu/CenterRow/Buttons.get_children():
#		button.connect("pressed", self, "_on_Button_pressed", button.scene_to_load)
#
#func _on_Button_pressed(scene_to_load):
#	if scene_to_load == "quit":
#		get_tree().quit(0)
#	if scene_to_load != "quit":
#		var scene_path = "res://scenes/" + scene_to_load + ".tscn"
#		get_tree().change_scene(scene_path)


func _on_NewGame_pressed():
	get_tree().change_scene("res://scenes/OverWorld.tscn")


func _on_QuitButton_pressed():
	get_tree().quit(0)
