extends CharacterBody2D


var speed: float = 200
var player: Node2D

func_ready():
	player = get_node("/root/Player")
