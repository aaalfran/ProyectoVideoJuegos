extends Area2D

var insideTower2AreaExit = false
#var leftTower1 = false
signal leaveTower2
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideTower2AreaExit = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideTower2AreaExit = false
		
func _input(event):
		if insideTower2AreaExit:
			print("Entraste a la torree negra1")
			emit_signal("leaveTower2")
			#leftTower1 = true
