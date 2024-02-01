extends Area2D
var llave = false
# Señal que se emite cuando hay una colisión

func _on_body_entered(body):
	if body.is_in_group("Player") and llave ==true:
			var sound_player = AudioStreamPlayer.new()
			add_child(sound_player)
			var sound = preload("res://Sound/open_door.wav") 
			sound_player.stream = sound
			sound_player.play()
			get_tree().change_scene_to_file("res://Escenas/CellBlock.tscn")


func _on_green_key_puerta_llave_verde():
	llave =true
