extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_area_2dbb_2_camera_two_off():
	$Visualcone.visible = false
	$Visualcone/Area2D.visible = false
	$Visualcone/Area2D/CollisionPolygon2D.disabled = true