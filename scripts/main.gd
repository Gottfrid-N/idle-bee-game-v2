extends Node2D

@onready var plots: Array[Plot]

func _ready() -> void:
	plots.append(Plot.new(Vector2i(5, 5)))

	$"TabController/Tabs/Plots/PlotLabel".text = plots[0]._to_string()
