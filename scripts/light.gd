extends CharacterBody2D

var movespeed = 100
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity.x = movespeed
	move_and_slide()
	if is_on_wall():
		movespeed=-movespeed
