extends KinematicBody2D

# -----Variables-----
var velocity = Vector2(0,0)

# -----MovementFunction-----
func _physics_process(delta):
	#-----recogniseAction-----
	if Input.is_action_pressed("right"):
		velocity.x = 100
	elif Input.is_action_pressed("left"):
		velocity.x = -100
	#-----Movement-----
	velocity = move_and_slide(velocity)
	#-----StopPlayerWhenNothingPressed-----
	velocity.x = lerp(velocity.x,0,0.1)
