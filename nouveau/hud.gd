extends CanvasLayer

@onready var Main = get_node("/root/Gamemanager")


@export var total_coins := 4

func _ready() -> void:
	
	%CoinsLabel.text = str(Main.coin) + "/" + str(total_coins)
	Main.coin_collectee.connect(retroaction_monnaie)

func retroaction_monnaie(valeur_monnaies):

	%CoinsLabel.text = str(valeur_monnaies) + "/" + str(total_coins)
