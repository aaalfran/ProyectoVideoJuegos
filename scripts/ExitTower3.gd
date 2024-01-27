extends Area2D

var insideTower3AreaExit = false
#var leftTower1 = false
signal leaveTower3
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideTower3AreaExit = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideTower3AreaExit = false
		
func _input(event):
		if insideTower3AreaExit:
			print("Entraste a la torree negra1")
			emit_signal("leaveTower3")
			#leftTower1 = true
