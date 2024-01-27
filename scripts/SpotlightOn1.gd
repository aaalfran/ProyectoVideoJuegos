extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_breaker_light_shut_light_1():
	self.texture = ResourceLoader.load("res://assets/Tilesets/Objects/Spotlight_Off.png")
