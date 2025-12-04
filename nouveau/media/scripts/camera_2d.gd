extends Camera2D

@onready var tilemap = get_node_or_null("../TileMap")  

func _ready():
	if tilemap == null:
		push_warning("TileMap introuvable pour la caméra !")
		return

	var cell_size = tilemap.tile_set.tile_size if tilemap.tile_set.has_method("get_tile_size") else tilemap.cell_quadrant_size


	var used_rect = tilemap.get_used_rect()

	var level_rect = Rect2(
		used_rect.position * cell_size,
		used_rect.size * cell_size
	)

	limit_left = int(level_rect.position.x)
	limit_top = int(level_rect.position.y)
	limit_right = int(level_rect.position.x + level_rect.size.x)
	limit_bottom = int(level_rect.position.y + level_rect.size.y)

	make_current() 
	zoom = Vector2(3,3)
