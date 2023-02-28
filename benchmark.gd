extends Node2D

func _on_rich_nodes_button_pressed() -> void:
	get_tree().change_scene_to_file("res://rich_nodes.tscn")


func _on_thin_nodes_button_pressed() -> void:
	get_tree().change_scene_to_file("res://thin_nodes.tscn")


func _on_no_nodes_button_pressed() -> void:
	get_tree().change_scene_to_file("res://no_nodes.tscn")
