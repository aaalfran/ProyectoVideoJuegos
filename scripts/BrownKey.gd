extends Area2D
signal brownkey1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.is_in_group("Player"):
		emit_signal("brownkey1")
		var brownKey1 = get_parent().get_node("personajePrincipal/HUD/BrownKey1")
		brownKey1.visible = true
		print(brownKey1)
		queue_free()
		
