extends Area2D

func _on_body_entered(body):
	if is a Node and body.get_path().as_text() == "res://Player/Player.tscn":
		queue_free()
