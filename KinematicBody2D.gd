extends KinematicBody2D
 
const ACCELERATION = 70
const MAX_SPEED = 300
const JUMP_H = -900
const UP = Vector2(0, -1)
const gravity = 40
 
onready var sprite = $Sprite
onready var animationPlayer = $AnimationPlayer
 
var motion = Vector2()
 
func _physics_process(delta):
	# apply gravity to the player
	motion.y += gravity
	var friction = false
 
	if Input.is_action_pressed("ui_right"):
		sprite.flip_h = false
		$Sprite.play("camina")
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
	elif Input.is_action_pressed("ui_left"):
		$Sprite.play("camina")
		sprite.flip_h = true
		motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
	else:
		$Sprite.play("normal")
		friction = true
 
	if is_on_floor():
 
		if Input.is_action_just_pressed("ui_accept"):
			$Sprite.play("Salto")
			motion.y = JUMP_H
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.5)
	else:
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.01)
 
	motion = move_and_slide(motion, UP)
 


	#funcion teletransportar
func Vacio():
	position.x = 7
	position.y = -4

func puerta():
	position.x = -540
	position.y = -321
