extends CharacterBody2D


func _physics_process(delta):
	var input_direction = Input .get_vector("ui_right", "ui_left", "ui_up", "ui_down")
	velocity = input_direction * 400
	move_and_slide()

func _on_pickup_area_area_entered(area):
	if area.is_in_group("chocopie"):
		area .queue_free()
