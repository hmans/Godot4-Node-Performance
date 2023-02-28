extends Sprite2D

@onready var width := get_viewport_rect().size.x
@onready var height := get_viewport_rect().size.y

var velocity := Vector2(100, 100)

func _process(delta: float) -> void:
	position += velocity * delta

	if position.x < 0:
		position.x = 0
		velocity.x = -velocity.x
	elif position.x > width:
		position.x = width
		velocity.x = -velocity.x

	if position.y < 0:
		position.y = 0
		velocity.y = -velocity.y
	elif position.y > height:
		position.y = height
		velocity.y = -velocity.y
