extends Area2D

var insideAreaBreakerOficina = false
var OfficeCameraisShut = false
signal OfficeCameraOff
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideAreaBreakerOficina = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideAreaBreakerOficina = false
		
func _input(event):
		if insideAreaBreakerOficina and event.is_action_pressed("interact") and !OfficeCameraisShut:
			print("Apagaste la camara africana")
			emit_signal("OfficeCameraOff")
			OfficeCameraisShut = true
