extends Area2D

var insideArea2 = false
var Camera2isShut = false
signal cameraTwoOff
func _ready():
	set_process_input(true)

func _on_body_entered(body):
	if body.is_in_group("Player"):
		insideArea2 = true


func _on_body_exited(body):
	if body.is_in_group("Player"):
		insideArea2 = false
		
func _input(event):
		if insideArea2 and event.is_action_pressed("interact") and !Camera2isShut:
			print("Apagaste la segunda Camara africana")
			emit_signal("cameraTwoOff")
			Camera2isShut = true
			
			var sound_player = AudioStreamPlayer.new()
			add_child(sound_player)
			var sound = preload("res://Sound/sabotage.wav") 
			sound_player.stream = sound
			sound_player.play()
			await get_tree().create_timer(0.4).timeout 
