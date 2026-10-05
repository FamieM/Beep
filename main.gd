extends Node2D

var item_scene = preload("res://item.tscn")

func _on_timer_timeout():
	var item = item_scene.instantiate()
	item.position = Vector2(randf_range(50, 1100), 0)
	add_child(item)
