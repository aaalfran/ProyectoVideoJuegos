extends CharacterBody2D

var movespeed = 100
var has_adjusted_position = false
var restablish = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity.x = movespeed
	move_and_slide()
	
	if is_on_wall():
		movespeed = -movespeed
		has_adjusted_position = false  # Restablece la variable cuando cambia la dirección
	# Ajusta la posición del cono visual solo cuando la dirección del movimiento cambia
	if restablish and not has_adjusted_position:
		$Visualcone.position.x = $Visualcone.position.x + 290
		print($Visualcone.position.x)
		restablish = false
	if movespeed > 0 and not has_adjusted_position:
		$AnimatedSprite2D.flip_h = false
		$Visualcone.flip_h = false
		has_adjusted_position = true  # Marca que la posición ha sido ajustada
		print($Visualcone.position.x)
	elif movespeed < 0 and not has_adjusted_position:
		$AnimatedSprite2D.flip_h = true
		$Visualcone.flip_h = true
		$Visualcone.position.x = $Visualcone.position.x - 290
		print($Visualcone.position.x)
		has_adjusted_position = true  # Marca que la posición ha sido ajustada
		restablish = true
	

