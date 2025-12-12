extends Area2D

@onready var sound_player = $SoundPlayer

func _on_body_entered(body):
	if body.has_method("apply_jump_boost"):
		body.apply_jump_boost(1.0)  
		

		if sound_player:
			sound_player.play()
		
		queue_free()
