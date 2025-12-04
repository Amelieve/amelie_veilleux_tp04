extends Button

func _pressed():
	var menu = get_parent().get_node("PauseMenu")
	menu.open_menu()
