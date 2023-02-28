extends Node2D

@export var prefab : PackedScene

@onready var area := get_viewport_rect()

var nodes : Array[ThinNode] = []

func _ready() -> void:
	for i in range(10000):
		_make_node()

func _process(delta: float) -> void:
	for node in nodes:
#		ThinNode.simulate(node, delta, area)

		node.position += node.velocity * delta

		if node.position.x < 0:
			node.position.x = 0
			node.velocity.x = -node.velocity.x
		elif node.position.x > area.size.x:
			node.position.x = area.size.x
			node.velocity.x = -node.velocity.x

		if node.position.y < 0:
			node.position.y = 0
			node.velocity.y = -node.velocity.y
		elif node.position.y > area.size.y:
			node.position.y = area.size.y
			node.velocity.y = -node.velocity.y



func _make_node() -> void:
	var instance = prefab.instantiate()

	# Assign random position
	instance.position = Vector2(randf_range(0, get_viewport_rect().size.x), randf_range(0, get_viewport_rect().size.y))

	# Assign random velocity
	instance.velocity = Vector2(randf_range(-100, 100), randf_range(-100, 100))

	add_child(instance)

	nodes.push_back(instance)
