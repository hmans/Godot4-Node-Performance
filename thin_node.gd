class_name ThinNode
extends Sprite2D

var velocity := Vector2(100, 100)

static func simulate(node: ThinNode, delta: float, area: Rect2):
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
