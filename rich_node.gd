class_name RichNode extends ThinNode

@onready var area := get_viewport_rect()

func _process(delta: float) -> void:
	ThinNode.simulate(self, delta, area)
