extends Control


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Areas/area_01.tscn")


func _on_button_2_pressed() -> void:
	print("Setting pressed")


func _on_button_3_pressed() -> void:
	print("Exit pressed")
