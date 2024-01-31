extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	if body.is_in_group("Player"):
		var hud = get_node("../../../../personajePrincipalBlock/HUD")
		var vidaPlayer = hud.vidas
		print(hud.vidas)
		if vidaPlayer > 0:
			var damage  =  get_node("../../../../personajePrincipalBlock/HUD/Health"+str(vidaPlayer))
			var texture =  ImageTexture.new()
			texture = load("res://assets/Tilesets/Objects/greyheart.png")
			damage.set_texture(texture)
			hud.vidas -= 1
		else:
			get_tree().change_scene_to_file("res://Escenas/game_over_screen.tscn")


