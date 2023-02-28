extends Node2D


@export var prefab : PackedScene

func _ready() -> void:
	for i in range(10000):
		_make_node()


func _make_node() -> void:
	var instance = prefab.instantiate()

	# Assign random position
	instance.position = Vector2(randf_range(0, get_viewport_rect().size.x), randf_range(0, get_viewport_rect().size.y))

	# Assign random velocity
	instance.velocity = Vector2(randf_range(-100, 100), randf_range(-100, 100))

	add_child(instance)
