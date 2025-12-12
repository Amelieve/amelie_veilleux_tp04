extends Button

func _pressed():
	var menu = get_parent()  # CanvasLayer
	menu.open_menu()
