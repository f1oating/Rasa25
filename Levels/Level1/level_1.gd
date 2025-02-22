extends Node2D


func _on_spikes_bottom_body_entered(body: Node2D) -> void:
	if (body.name == "Player"):
		body.position = Vector2(55, 527)


func _on_next_level_trigger_body_entered(body: Node2D) -> void:
	if (body.name == "Player"):
		if Global.current_level == 1:
			Global.current_level = 2
		get_tree().change_scene_to_file("res://Levels/Level2/level_2.tscn")
