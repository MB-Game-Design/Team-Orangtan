extends Area2D

func _on_body_entered(body):
	if body.get_path() == "res://Player/Player.tscn":
		queue_free()
