extends CharacterBody2D

var direction 
var speed = 60
@export var number_player: int
@onready var granja = $".."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	# si el juego termino sale de la funcion actual y no ejecuta el resto de la funcion
	if granja.juego_terminado == true: 
		return
	
	# Esta funcion hace lo mismo que la estructura de los if
	direction = Input.get_vector("p2_left", "p2_right", "p2_up", "p2_down")
	# inicializamos en cero
	#direction = Vector2.ZERO
	
	#if Input.is_action_pressed("MOVE_UP"):
		#direction.y = -1
	#if Input.is_action_pressed("MOVE_DOWN"):
		#direction.y = 1
	#if Input.is_action_pressed("MOVE_LEFT"):
		#direction.x = -1
	#if Input.is_action_pressed("MOVE_RIGHT"):
		#direction.x = 1
	
	# Normalizamos la direccion
	direction = direction.normalized()
	# position += direction * speed * delta
	velocity = direction * speed
	move_and_slide()
