extends Area2D

var insideTower3Area = false
#var enteredTower1 = false
signal enterTower3
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideTower3Area = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideTower3Area = false
		
func _input(event):
		if insideTower3Area:
			print("Entraste a la torree negra1")
			emit_signal("enterTower3")
			#enteredTower1 = true
