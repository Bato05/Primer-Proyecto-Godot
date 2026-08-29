extends Node

var puntos : int = 0
var puntaje_maximo : int = 0

var archivo_de_guardado = "user://guardado.dat"

func grabar():
		
	var archivo = FileAccess.open(archivo_de_guardado, FileAccess.WRITE)
	archivo.store_var(puntaje_maximo)
	archivo.close()
		
		
func cargar():
	# Primero nos fijamos si el archivo de guardado existe, si no, no hace nada
	if FileAccess.file_exists(archivo_de_guardado):
		var archivo = FileAccess.open(archivo_de_guardado, FileAccess.READ)
		puntaje_maximo = archivo.get_var()
		# Por vcada get_var() tenemos que hacer tal cual debe estar como fueron guardados cada una de las variables
		archivo.close
