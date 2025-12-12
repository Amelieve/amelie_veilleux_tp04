extends Button

func _pressed():
	var menu = get_parent() 
	menu.open_menu()
