extends Node2D

var scene_manzana = load("res://scenes/manzana.tscn")
var tiempo_restante : int = 10
var juego_terminado : bool = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.cargar()
	Global.puntos = 0
	# la crea en la memoria pero no la crea en pantalla
	var nueva_manzana  
	
	for n in range(0, 10):
		nueva_manzana = scene_manzana.instantiate()
		# ahora si
		add_child(nueva_manzana)
		nueva_manzana.position.x = randi_range(10, 310)
		nueva_manzana.position.y = randi_range(10, 190)
		$LabelMaximoPuntaje.text = "Max: " + str(Global.puntaje_maximo)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_cuenta_regresiva_timeout() -> void:
	
	# En caso de que el contador sea cero...que este se detenga
	if tiempo_restante > 0: tiempo_restante -= 1
	else: 
		$TimerCuentaRegresiva.stop()
		juego_terminado = true
		
	$LabelCuentaRegresiva.text = "Tiempo: " + str(tiempo_restante)

func sumar_punto() -> void:
	
	Global.puntos += 1
	$LabelPuntos.text = "Puntos " + str(Global.puntos)
	if Global.puntos > Global.puntaje_maximo:
			Global.puntaje_maximo = Global.puntos
			$LabelMaximoPuntaje.text = "Max: " + str(Global.puntaje_maximo)
			Global.grabar()
