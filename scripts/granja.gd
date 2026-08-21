extends Node2D

var scene_manzana = load("res://scenes/manzana.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# la crea en la memoria pero no la crea en pantalla
	var nueva_manzana  
	
	for n in range(0, 10):
		nueva_manzana = scene_manzana.instantiate()
		# ahora si
		add_child(nueva_manzana)
		nueva_manzana.position.x = randi_range(10, 310)
		nueva_manzana.position.y = randi_range(10, 190)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
