extends ParallaxBackground

func _process(delta: float) -> void:
	self.scroll_offset.x += 100 * delta
