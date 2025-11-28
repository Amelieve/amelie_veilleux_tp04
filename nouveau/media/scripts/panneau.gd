class_name PanneauMessage
extends Area2D

func _ready() -> void:
	$Message.hide()

func _on_body_entered(body: Node2D) -> void:
	if body is PlayerController:
		show_message()

func _on_body_exited(body: Node2D) -> void:
	if body is PlayerController:
		hide_message()

func show_message() -> void:
	$Message.show()
	$Timer.start()

	await $Timer.timeout
	$Message.hide()

func hide_message() -> void:
	$Timer.stop()
	$Message.hide()
