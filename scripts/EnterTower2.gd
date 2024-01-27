extends Area2D

var insideTower2Area = false
#var enteredTower1 = false
signal enterTower2
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideTower2Area = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideTower2Area = false
		
func _input(event):
		if insideTower2Area:
			print("Entraste a la torree negra1")
			emit_signal("enterTower2")
			#enteredTower1 = true
