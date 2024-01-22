extends Area2D

var insideArea1 = false
var Camera1isShut = false
signal cameraOneOff
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideArea1 = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideArea1 = false
		
func _input(event):
		if insideArea1 and event.is_action_pressed("interact") and !Camera1isShut:
			print("Apagaste la camara africana")
			emit_signal("cameraOneOff")
			Camera1isShut = true
