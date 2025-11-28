extends Area2D

func _on_body_entered(body):
	if body.has_method("apply_speed_boost"):
		body.apply_speed_boost(1.0) 
	queue_free()
