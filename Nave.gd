extends Area2D

export var pixeles_por_segundo : int = 180


func _ready():
	pass


func _process(delta):
	if Input.is_action_pressed("ui_right"):
		position.x += pixeles_por_segundo * delta
	if Input.is_action_pressed("ui_left"):
		position.x -= pixeles_por_segundo * delta
