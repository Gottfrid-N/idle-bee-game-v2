class_name Cell

@export var id: int
@export var data: Array

func _init(_id: int, _data: Array):
    id = _id
    data = _data

func _to_string() -> String:
    return "[id: %d, data = %s]" % [id, data]