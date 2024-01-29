extends Area2D
var llave1 = false
var llave2 = false
# Señal que se emite cuando hay una colisión
signal salidaCompleta

func _on_body_entered(body):
	if body.is_in_group("Player") and llave1 and llave2:
		print("ganaste")
		emit_signal("salidaCompleta")

func _on_brown_key_brownkey_1():
	llave1 = true


func _on_brown_key_2_brownkey_2():
	llave2 = true
