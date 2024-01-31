extends Area2D
signal puerta_llave

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.is_in_group("Player"):
		emit_signal("puerta_llave")
		var redKey = get_parent().get_parent().get_node("TileMap_Block/personajePrincipalBlock/HUD/RedKey")
		print(redKey)
		redKey.visible = true
		var sound_player = AudioStreamPlayer.new()
		add_child(sound_player)
		var sound = preload("res://Sound/take_key.wav") 
		sound_player.stream = sound
		
		sound_player.play()
		
		queue_free()
		
