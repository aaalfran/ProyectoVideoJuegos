extends Area2D

# Señal que se emite cuando hay una colisión

func _on_body_entered(body):
	if body.is_in_group("Player"):
		print("Los negros salseros")
		get_tree().change_scene_to_file("res://Escenas/CellBlock.tscn")