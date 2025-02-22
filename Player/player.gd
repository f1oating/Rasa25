extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var animPlayer = $AnimationPlayer

var is_left_pressed := false

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	if Input.is_action_just_pressed("Jump") and is_on_floor():
		animPlayer.play("Jump")
		velocity.y = JUMP_VELOCITY

	if is_left_pressed:
		velocity.x = -SPEED
		$AnimatedSprite2D.flip_h = true
		animPlayer.play("Walk")
	else:
		var direction := Input.get_axis("Left", "Right")
		if direction:
			velocity.x = direction * SPEED
			if velocity.y == 0:
				animPlayer.play("Walk")
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			if velocity.y == 0:
				animPlayer.play("Idle")

		if direction == -1:
			$AnimatedSprite2D.flip_h = true
		elif direction == 1:
			$AnimatedSprite2D.flip_h = false

	move_and_slide()
