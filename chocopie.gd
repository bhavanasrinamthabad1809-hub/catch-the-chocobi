extends Area2D

@export var fall_speed = 200

func _process(delta):
	position.y += 300 * delta
	
