extends CharacterBody2D
class_name PlayerController

@export var speed := 150.0         
@export var jump_power := -300.0

var speed_multiplier := 1.0     
var direction := 0

var speed_boost_active = false
var speed_boost_amount = -500.0 
var speed_boost_timer = 1.0


var boost_timer := 0.0


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_power
	direction = Input.get_axis("move_left", "move_right")
	velocity.x = direction * speed * speed_multiplier

	move_and_slide()
	
	if boost_timer > 0:
		boost_timer -= delta
		if boost_timer <= 0:
			speed_multiplier = 1.0   


func apply_speed_boost(duration: float) -> void:
	speed_multiplier = 2.0    
	boost_timer = duration
	
func apply_jump_boost(duration: float) -> void:
	speed_boost_active = true
	speed_boost_timer = duration
	jump_power *= 1.5
	print("BOOST ACTIVÉ")

func _process(delta: float) -> void:
	if speed_boost_active:
		speed_boost_timer -= delta
		if speed_boost_timer <= 0:
			speed_boost_active = false
			jump_power /= 1.5
			print("BOOST DÉSACTIVÉ")

	
