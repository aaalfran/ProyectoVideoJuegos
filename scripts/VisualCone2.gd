extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.is_in_group("Player"):
		var sound_player = AudioStreamPlayer.new()
		add_child(sound_player)
		var sound = preload("res://Sound/alarm_detected.wav") 
		sound_player.stream = sound
		sound_player.play()  
		await get_tree().create_timer(1).timeout 
		get_tree().change_scene_to_file("res://Escenas/atrapado_screen.tscn")
