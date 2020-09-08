extends Area2D

export var pixelesPorSegundo : int = 180


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	position.y -= pixelesPorSegundo * delta
	
	if position.y < 0:
		queue_free()
		
