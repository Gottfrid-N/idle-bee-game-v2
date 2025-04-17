extends Node2D

@onready var defualt_button = $"Buttons/Plots"
@onready var buttons: Array[Node] = $"Buttons".get_children()
@onready var tabs: Array[Node] = $"Tabs".get_children()

func _ready() -> void:
    for tab: Node2D in tabs:
        tab.visible = false

    for button: Button in buttons:
        button.pressed.connect(_switch_tab.bind(button))

    defualt_button.emit_signal(&"pressed")

func _switch_tab(button: Button):
    for tab: Node2D in tabs:
        tab.set_visible(false)

    get_node(NodePath(&"Tabs/" + button.name)).set_visible(true)
