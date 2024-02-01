extends Area2D

var insideAreaBreakerOficina = false
var OfficeCameraisShut = false
signal OfficeCameraOff
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideAreaBreakerOficina = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideAreaBreakerOficina = false
		
func _input(event):
		if insideAreaBreakerOficina and event.is_action_pressed("interact") and !OfficeCameraisShut:
			print("Apagaste la camara africana")
			emit_signal("OfficeCameraOff")
			OfficeCameraisShut = true
			
			var sound_player = AudioStreamPlayer.new()
			add_child(sound_player)
			var sound = preload("res://Sound/sabotage.wav") 
			sound_player.stream = sound
			sound_player.play()
			await get_tree().create_timer(0.4).timeout 
