extends Area2D
var llave = false
# Señal que se emite cuando hay una colisión

func _on_body_entered(body):
	if body.is_in_group("Player") and llave ==true:
		get_tree().change_scene_to_file("res://Escenas/CellBlock.tscn")



func _on_llave_puerta_llave():
	llave =true
