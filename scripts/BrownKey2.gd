extends Area2D
signal brownkey2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.is_in_group("Player"):
		emit_signal("brownkey2")
		var brownKey2 = get_parent().get_node("personajePrincipal/HUD/BrownKey2")
		brownKey2.visible = true
		print(brownKey2)
		var sound_player = AudioStreamPlayer.new()
		add_child(sound_player)
		var sound = preload("res://Sound/take_key.wav") 
		sound_player.stream = sound
		sound_player.play()
		await get_tree().create_timer(0.4).timeout 
		queue_free()
		
