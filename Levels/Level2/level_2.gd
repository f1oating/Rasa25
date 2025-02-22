extends Node2D


func _on_spikes_bottom_body_entered(body: Node2D) -> void:
	if (body.name == "Player"):
		body.position = Vector2(119, 353)


func _on_next_level_trigger_body_entered(body: Node2D) -> void:
	if (body.name == "Player"):
		if Global.current_level == 2:
			Global.current_level = 3
		get_tree().change_scene_to_file("res://Levels/Level3/level_3.tscn")
