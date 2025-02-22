extends Node2D

func _ready():
	var level_scene = load("res://Levels/Level{level}/level_{level}.tscn"
	.format({ "level": Global.current_level })) 
	var level_instance = level_scene.instantiate()
	var scene_node = level_instance.get_node("Scene")

	for child in scene_node.get_children():
		var child_copy = child.duplicate()
		child_copy.set_script(null)
		$Scene.add_child(child_copy)

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Level{level}/level_{level}.tscn"
	.format({ "level": Global.current_level }))


func _on_levels_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/levels.tscn")
