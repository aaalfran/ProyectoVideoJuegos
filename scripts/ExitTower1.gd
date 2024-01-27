extends Area2D

var insideTower1AreaExit = false
#var leftTower1 = false
signal leaveTower1
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideTower1AreaExit = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideTower1AreaExit = false
		
func _input(event):
		if insideTower1AreaExit:
			print("Entraste a la torree negra1")
			emit_signal("leaveTower1")
			#leftTower1 = true
