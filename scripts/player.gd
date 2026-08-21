extends Sprite2D

var velocity = 60
var direction 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Esta funcion hace lo mismo que la estructura de los if
	direction = Input.get_vector("MOVE_LEFT", "MOVE_RIGHT", "MOVE_UP", "MOVE_DOWN")
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
	position += direction * velocity * delta
