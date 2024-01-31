extends CharacterBody2D

var movespeed = 100
var has_adjusted_position2 = false
var restablish2 = false

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity.y = movespeed
	move_and_slide()
	has_adjusted_position2 = false
	
	if restablish2 and not has_adjusted_position2:
		$VisualCone2.position.y = $VisualCone2.position.y + 290
		restablish2 = false
	
	#El personaje se mueve hacia abajo
	if is_on_ceiling()  and not has_adjusted_position2:
		$AnimatedSprite2D.play("mov_abajo")
		$VisualCone2.flip_h = false
		movespeed = -movespeed
		has_adjusted_position2 = true 
		restablish2 = true
		
	#El personaje se mueve hacia arriba
	elif is_on_floor() and not has_adjusted_position2:
		$AnimatedSprite2D.play("mov arriba")
		$VisualCone2.flip_h = true
		$VisualCone2.position.y = $VisualCone2.position.y -290
		#print($VisualCone2.position.y)
		movespeed = -movespeed
		has_adjusted_position2 = true 
		
		
		
		

