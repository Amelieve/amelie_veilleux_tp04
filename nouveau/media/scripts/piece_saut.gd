extends Area2D

func _on_body_entered(body):
	if body.has_method("apply_jump_boost"):
		body.apply_jump_boost(1.0)  
		print("BOOST TRIGGERED !") 
		queue_free()
