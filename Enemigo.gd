extends Area2D

export var pixelesPorSegundo : int = 180
var velocidadActual = pixelesPorSegundo


func _ready():
	pass 


func _process(delta):
	position.x += velocidadActual * delta
	if position.x < 100 or position.x > 900:
		velocidadActual = - velocidadActual
