class_name RichNode extends ThinNode

@onready var area := get_viewport_rect()

func _process(delta: float) -> void:
	position += velocity * delta

	if position.x < 0:
		position.x = 0
		velocity.x = -velocity.x
	elif position.x > area.size.x:
		position.x = area.size.x
		velocity.x = -velocity.x

	if position.y < 0:
		position.y = 0
		velocity.y = -velocity.y
	elif position.y > area.size.y:
		position.y = area.size.y
		velocity.y = -velocity.y
