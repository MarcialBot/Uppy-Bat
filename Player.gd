extends KinematicBody2D

# Use the `input` node to detect when the player is pressing a key
onready var input = get_node("/root/Input")

# The speed at which the player character moves
var speed = 200

# The direction the player is currently moving (1 for right, -1 for left)
var direction = 1

func _physics_process(delta):
	# Check if the player is pressing the left arrow key
	if input.is_action_pressed("ui_left"):
		direction = -1
		$Sprite.flip_h = true
	# Check if the player is pressing the right arrow key
	elif input.is_action_pressed("ui_right"):
		direction = 1
		$Sprite.flip_h = false
	# If the player is not pressing any keys, stop moving
	else:
		direction = 0
