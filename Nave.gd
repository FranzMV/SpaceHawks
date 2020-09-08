extends Area2D

const DISPARO = preload("res://Disparo.tscn")
export var pixeles_por_segundo : int = 180
export var tiempoHastaElDisparo = 1.0
export var tiempoPorCadaDisparo = 1.0

func _ready():
	pass


func _process(delta):
	
	tiempoHastaElDisparo += delta
	
	if Input.is_action_pressed("ui_right"):
		position.x += pixeles_por_segundo * delta
	if Input.is_action_pressed("ui_left"):
		position.x -= pixeles_por_segundo * delta
	if Input.is_key_pressed(KEY_SPACE):
		disparar()
		
		
		
func disparar():
	if tiempoHastaElDisparo >= tiempoPorCadaDisparo:
		tiempoHastaElDisparo = 0
		var disparo = DISPARO.instance()
		disparo.position = position - Vector2(0,40)
		get_parent().add_child(disparo)
	
