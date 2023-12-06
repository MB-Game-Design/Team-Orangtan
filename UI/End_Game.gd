extends Control


func _ready():
	$Label.text = "Congrats You Got To The Water! YoU WiN "


func _on_play_pressed():
	Global.reset()
	get_tree().change_scene_to_file("res://game.tscn")


func _on_quit_pressed():
	get_tree().quit()
