extends Node2D

func _ready():
	for area in $KillTriggers.get_children():
		if area is Area2D:
			area.body_entered.connect(_on_spike_body_entered)

func _on_spike_body_entered(body):
	if (body.name == "Player"):
		body.position = Vector2(73, 527)

func _on_next_level_trigger_body_entered(body: Node2D) -> void:
	if (body.name == "Player"):
		if Global.current_level == 4:
			Global.current_level = 5
		get_tree().change_scene_to_file("res://Levels/Level5/level_5.tscn")
