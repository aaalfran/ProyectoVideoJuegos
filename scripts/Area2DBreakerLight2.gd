extends Area2D

var insideLight2BreakerArea = false
var Light2isShut = false
signal shutLight2
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideLight2BreakerArea = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideLight2BreakerArea = false
		
func _input(event):
		if insideLight2BreakerArea and event.is_action_pressed("interact") and !Light2isShut:
			print("Apagaste la Torre negra2")
			emit_signal("shutLight2")
			Light2isShut = true
			
			var sound_player = AudioStreamPlayer.new()
			add_child(sound_player)
			var sound = preload("res://Sound/sabotage.wav") 
			sound_player.stream = sound
			sound_player.play()
			await get_tree().create_timer(0.4).timeout 
