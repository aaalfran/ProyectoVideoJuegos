extends Area2D

var insideTower4Area = false
#var enteredTower1 = false
signal enterTower4
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideTower4Area = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideTower4Area = false
		
func _input(event):
		if insideTower4Area:
			print("Entraste a la torree negra4")
			emit_signal("enterTower4")
			#enteredTower1 = true
