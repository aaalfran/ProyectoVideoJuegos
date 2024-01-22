extends Area2D

var insideArea2 = false
var Camera2isShut = false
signal cameraTwoOff
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideArea2 = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideArea2 = false
		
func _input(event):
		if insideArea2 and event.is_action_pressed("interact") and !Camera2isShut:
			print("Apagaste la segunda Camara africana")
			emit_signal("cameraTwoOff")
			Camera2isShut = true
