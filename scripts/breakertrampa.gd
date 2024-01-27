extends Area2D

var insideAreaBreakerOficina = false
var OfficeCameraisShut = false
var sound_player : AudioStreamPlayer
signal OfficeCameraOff

func _ready():
	set_process_input(true)
	
	# Crear y configurar el AudioStreamPlayer
	sound_player = AudioStreamPlayer.new()
	add_child(sound_player)
	var sound = preload("res://Sound/alarm_detected.wav") 
	sound_player.stream = sound

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideAreaBreakerOficina = true

func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideAreaBreakerOficina = false

func _input(event):
	if insideAreaBreakerOficina and event.is_action_pressed("interact") and !OfficeCameraisShut:
		print("hola")
		sound_player.play()  
		get_tree().change_scene_to_file("res://Escenas/CellBlock.tscn")
