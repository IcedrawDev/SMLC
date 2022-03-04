extends Area2D

func _on_Puerta_body_entered(body):
	$AnimatedSprite.play("Abierta")
	body.puerta()
