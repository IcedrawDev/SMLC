extends Area2D


func _on_Moneda_body_entered(body):
	if body.name == "KinematicBody2D":
		queue_free()
	print("xd")
