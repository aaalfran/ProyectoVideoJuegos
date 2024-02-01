extends Area2D

var llave = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.is_in_group("Player") and llave ==true:
		var sound_player = AudioStreamPlayer.new()
		add_child(sound_player)
		var sound = preload("res://Sound/open_door.wav") 
		sound_player.stream = sound
		sound_player.play()
		get_tree().change_scene_to_file("res://Escenas/Patio.tscn")
	else:
		if body.is_in_group("Player"):
			$interactuarP.visible=true
		

func _on_llave_puerta_llave():
	llave =true


func _on_body_exited(body):
	if body.is_in_group("Player"):
			$interactuarP.visible=false
	
