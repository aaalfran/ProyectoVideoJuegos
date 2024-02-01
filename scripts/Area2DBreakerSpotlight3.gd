extends Area2D

var insideLight3BreakerArea = false
var Light3isShut = false
signal shutLight3
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideLight3BreakerArea = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideLight3BreakerArea = false
		
func _input(event):
		if insideLight3BreakerArea and event.is_action_pressed("interact") and !Light3isShut:
			print("Apagaste la Torre negra3")
			emit_signal("shutLight3")
			Light3isShut = true
			
			var sound_player = AudioStreamPlayer.new()
			add_child(sound_player)
			var sound = preload("res://Sound/sabotage.wav") 
			sound_player.stream = sound
			sound_player.play()
			await get_tree().create_timer(0.4).timeout 
