extends CanvasLayer

@onready var menu_container = $VBoxContainer

func _ready():
	menu_container.hide()   

func open_menu():
	menu_container.show()
	get_tree().paused = true

func close_menu():
	menu_container.hide()
	get_tree().paused = false

func _on_button_pressed(): 
	close_menu()
	get_tree().reload_current_scene()

func _on_button_2_pressed(): 
	close_menu()

func _on_button_3_pressed(): 
	close_menu()
	get_tree().change_scene_to_file("res://Areas/area_01.tscn")
