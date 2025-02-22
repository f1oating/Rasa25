extends Node2D


func _on_level_1_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level1/level_1.tscn")


func _on_level_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level2/level_2.tscn")


func _on_level_3_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level3/level_3.tscn")


func _on_level_4_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level4/level_4.tscn")


func _on_level_5_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level5/level_5.tscn")
