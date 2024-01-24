extends CharacterBody2D

var movespeed = 100
var has_adjusted_position = false
var restablish = false

func _ready():
	pass

func _process(delta):
	velocity.x = movespeed
	move_and_slide()
	
	if is_on_wall():
		movespeed = -movespeed
		has_adjusted_position = false 
		
	if restablish and not has_adjusted_position:
		$Visualcone.position.x = $Visualcone.position.x + 290
		restablish = false
		
	#El personaje se mueve hacia la derecha
	if movespeed > 0 and not has_adjusted_position:
		$AnimatedSprite2D.flip_h = false
		$Visualcone.flip_h = false
		has_adjusted_position = true 
	#El personaje se mueve hacia la izquierda
	elif movespeed < 0 and not has_adjusted_position:
		$AnimatedSprite2D.flip_h = true
		$Visualcone.flip_h = true
		$Visualcone.position.x = $Visualcone.position.x - 290
		has_adjusted_position = true  
		restablish = true
	

