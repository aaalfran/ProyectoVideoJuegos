extends Area2D

var insideTower4AreaExit = false
#var leftTower1 = false
signal leaveTower4
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideTower4AreaExit = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideTower4AreaExit = false
		
func _input(event):
		if insideTower4AreaExit:
			print("Entraste a la torree negra4")
			emit_signal("leaveTower4")
			#leftTower1 = true
