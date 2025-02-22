extends Node2D

var player_in_area = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "Player"):
		player_in_area = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	if (body.name == "Player"):
		player_in_area = false

func _physics_process(delta: float) -> void:
	if player_in_area:
		var player = get_parent().get_node("Player")
		if player:
			player.velocity.y = -50.0
