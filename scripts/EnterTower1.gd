extends Area2D

var insideTower1Area = false
#var enteredTower1 = false
signal enterTower1
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideTower1Area = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideTower1Area = false
		
func _input(event):
		if insideTower1Area:
			print("Entraste a la torree negra1")
			emit_signal("enterTower1")
			#enteredTower1 = true
