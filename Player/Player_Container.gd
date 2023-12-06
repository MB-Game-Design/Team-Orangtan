extends Node2D

@onready var Player = load("res://Player/Player.tscn")
var starting_position = Vector2(200,100)
var died = false
func _physics_process(_delta):
	if get_child_count() == 0:
		if died:
			var die_sound = get_node_or_null("/root/Game/die_sound")
			if die_sound != null:
				die_sound.play()
		var player = Player.instantiate()
		player.position = starting_position
		add_child(player)
		if get_child_count() == 0:
			died = true
