extends Area2D

func _on_Puerta_body_entered(body):
	print("Puerta Ejeecutada")
	$AnimatedSprite.play("Abierta")
	body.puerta()
