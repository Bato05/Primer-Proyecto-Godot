extends CharacterBody2D

var direction 
var speed = 60
@export var number_player: int
@onready var granja = $".."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	direction = (Vector2(1, 1).normalized())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var position_manzana
	var manzana = get_tree().get_first_node_in_group("manzanas")
	
	if manzana != null:
		position_manzana = manzana.position
	else:
		position_manzana = Vector2(0, 0)
		
	direction = Vector2.ZERO
	
	# Mover en el eje x
	if position.x > position_manzana.x:
		direction.x = -1
	elif position.x < position_manzana.x:
		direction.x = 1
		
	# Mover en el eje y
	if position.y < position_manzana.y:
		direction.y = 1
	elif position.y > position_manzana.y:
		direction.y = -1
		
	direction = direction.normalized()
	velocity = direction * speed
	move_and_slide()
