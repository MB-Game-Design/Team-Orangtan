extends Node2D

@onready var Player = load("res://Player/Player.tscn")
var starting_position = Vector2(200,100)
var died = false

func _physics_process(_delta):
	if get_child_count() == 0:
		if died:
			var ball_audio = get_node_or_null("/root/Game/Ball_Audio")
			if ball_audio != null:
				ball_audio.play()
		var player = Player.instantiate()
		player.position = starting_position
		add_child(player)
		died = true
