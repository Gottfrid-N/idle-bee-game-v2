class_name Plot

var cells: Array[Array]

func _init(bounds: Vector2i, defualt_cell: Cell = Cell.new(0, [])):
    cells = []
    for x in bounds.x:
        var row = []
        for y in bounds.y:
            row.append(defualt_cell)
        cells.append(row)

func _to_string() -> String:
    var string = "[\n"
    for row: Array[Cell] in cells:
        string += "["
        for cell: Cell in row:
            string += cell._to_string()
        string += "]\n"
    string += "]"
    return string
