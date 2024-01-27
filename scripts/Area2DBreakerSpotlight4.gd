extends Area2D

var insideLight4BreakerArea = false
var Light4isShut = false
signal shutLight4
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideLight4BreakerArea = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideLight4BreakerArea = false
		
func _input(event):
		if insideLight4BreakerArea and event.is_action_pressed("interact") and !Light4isShut:
			print("Apagaste la Torre negra4")
			emit_signal("shutLight4")
			Light4isShut = true
