extends Node

var current_level = 1
var file_path = "user://data.dat"

func _ready():
	load_level()

func load_level():
	var file = FileAccess.open(file_path, FileAccess.READ)
	if file:
		current_level = file.get_var()
		file.close()
	else:
		save_level()

func save_level():
	var file = FileAccess.open(file_path, FileAccess.WRITE)
	if file:
		file.store_var(current_level)
		file.close()

func _notification(what):
	if what == NOTIFICATION_WM_CLOSE_REQUEST:
		save_level()
