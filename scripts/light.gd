extends CharacterBody2D

var movespeed = 100
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity.x = movespeed
	move_and_slide()
	if is_on_wall():
		movespeed=-movespeed


func _on_area_2d_breaker_light_shut_light_1():
	$CollisionShape2D.disabled = true
	$Area2D/CollisionShape2D.disabled = true
	$Sprite2D.visible = false


func _on_area_2d_breaker_light_2_shut_light_2():
		$CollisionShape2D.disabled = true
		$Area2D/CollisionShape2D.disabled = true
		$Sprite2D.visible = false


func _on_area_2d_breaker_spotlight_3_shut_light_3():
	$CollisionShape2D.disabled = true
	$Area2D/CollisionShape2D.disabled = true
	$Sprite2D.visible = false


func _on_area_2d_breaker_spotlight_4_shut_light_4():
	$CollisionShape2D.disabled = true
	$Area2D/CollisionShape2D.disabled = true
	$Sprite2D.visible = false
