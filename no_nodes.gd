extends Node2D

@onready var area := get_viewport_rect()

const sprite = preload("res://mini.png")

class Thing:
	var position = Vector2()
	var velocity = Vector2()

var things : Array[Thing] = []

func _ready() -> void:
	for i in range(10000):
		_make_thing()


func _process(delta: float) -> void:
	for node in things:
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

	queue_redraw()

func _draw() -> void:
	var offset = -sprite.get_size() * 0.5
	for thing in things:
		draw_texture(sprite, thing.position + offset)

func _make_thing() -> void:
	var thing = Thing.new()
	thing.position = Vector2(randf_range(0, get_viewport_rect().size.x), randf_range(0, get_viewport_rect().size.y))
	thing.velocity = Vector2(randf_range(-100, 100), randf_range(-100, 100))

	things.push_back(thing)
