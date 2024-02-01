extends Area2D

var insideAreaBreakerSecurity = false
var SecurityCameraisShut = false
signal SecurityCameraOff
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideAreaBreakerSecurity = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideAreaBreakerSecurity = false
		
func _input(event):
		if insideAreaBreakerSecurity and event.is_action_pressed("interact") and !SecurityCameraisShut:
			print("Apagaste la camara africana de seguridad")
			emit_signal("SecurityCameraOff")
			SecurityCameraisShut = true
			
			var sound_player = AudioStreamPlayer.new()
			add_child(sound_player)
			var sound = preload("res://Sound/sabotage.wav") 
			sound_player.stream = sound
			sound_player.play()
			await get_tree().create_timer(0.4).timeout 



