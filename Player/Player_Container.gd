extends Node2D

@onready var Player = load("res://Player/Player.tscn")
var starting_position = Vector2(200,100)


func _ready():
	pass


func _physics_process(_delta):
	if not has_node("Player"):
		var player = Player.instantiate()
		player.position = starting_position
		add_child(player)
		if get_child_count() == 0:
		var ball_audio = get_node_or_null("/root/Game/Ball_Audio")
		if ball_audio != null:
			ball_audio.play()
