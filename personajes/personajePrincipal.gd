extends CharacterBody2D

# Propiedades del personaje
@export var speed :  float = 200

@onready var direction :  Vector2 = Vector2.ZERO

#Animacion
@onready var animation_tree: AnimationTree = $AnimationTree

func _ready():
	animation_tree.active = true

func _process(delta):
	update_animation_parameters()
func _physics_process(delta):
	direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down").normalized()
	
	if direction: 
		velocity = direction * speed
	else:
		velocity = Vector2.ZERO
		
	move_and_slide()

func update_animation_parameters():
	if velocity == Vector2.ZERO:
		animation_tree["parameters/conditions/idle"] = true
		animation_tree["parameters/conditions/is_moving"] = false
	else:
		animation_tree["parameters/conditions/idle"] = false
		animation_tree["parameters/conditions/is_moving"] = true
	if(direction != Vector2.ZERO):
		animation_tree["parameters/idle/blend_position"] = direction
		animation_tree["parameters/walk/blend_position"] = direction


#Codigo para entradas y salidas a Torres de vigilancia

#Torre1
func _on_enter_tower_1_enter_tower_1():
		self.position.x = 100
		self.position.y = 49
		
func _on_exit_tower_1_leave_tower_1():
	self.position.x = 100
	self.position.y = 200

#Torre2
func _on_enter_tower_2_enter_tower_2():
	self.position.x = 1830
	self.position.y = 50

func _on_exit_tower_2_leave_tower_2():
	self.position.x = 1876
	self.position.y = 215

#Torre3
func _on_enter_tower_3_enter_tower_3():
	self.position.x = 110
	self.position.y = 950

func _on_exit_tower_3_leave_tower_3():
	self.position.x = 100
	self.position.y = 1160

#Torre4

func _on_enter_tower_4_enter_tower_4():
	self.position.x = 1840
	self.position.y = 950


func _on_exit_tower_4_leave_tower_4():
	self.position.x = 1860
	self.position.y = 1140


func _on_area_2d_brown_door_salida_completa():
	self.position.x = 960
	self.position.y = 1300
