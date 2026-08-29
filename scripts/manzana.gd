extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_area_entered(area: Area2D) -> void:
	# Si el area que choco es la del jugador...elimina la manzana
	if area.is_in_group("Player"):
		
		# 3 formas de subir a un nodo superior
		# $"/root/Granja"
		# $"../../../"
		# get_parent().get_parent().get_parent()
		
		get_parent().sumar_punto()
		
		# elimina el nodo de la pantalla
		queue_free()
