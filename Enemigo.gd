extends Area2D

export var pixelesPorSegundo : int = 180
var velocidadActual = pixelesPorSegundo


func _ready():
	connect("area_entered", self, "recibirDisparo")


func _process(delta):
	velocidadActual = get_parent().get_node("BloqueDeEnemigos").velocidad 
	position.x += velocidadActual * delta
	if position.x < 100 or position.x > 900:
		velocidadActual = - velocidadActual
		get_parent().get_node("BloqueDeEnemigos").velocidad = velocidadActual
		

func recibirDisparo(object):
	get_parent().call("incrementarPuntos")
	object.queue_free()
	queue_free()
