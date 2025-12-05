extends Panel

@onready var reset_button = $ResetButton
@onready var continue_button = $ContinueButton

func _ready():
	hide() # Le menu est caché au début

func open_menu():
	show()
	get_tree().paused = true   # Pause tout le jeu sauf UI

func close_menu():
	hide()
	get_tree().paused = false  # Dépause


func _on_reset_button_pressed() -> void:
	get_tree().paused = false  # Dépause avant de changer de scène

	var gm = get_tree().get_first_node_in_group("game_manager")
	if gm:
		gm.current_area = 1

	get_tree().change_scene_to_file("res://Areas/area_01.tscn")


func _on_continue_button_pressed() -> void:
	print(">>> CONTINUE OK <<<")
	close_menu()
