extends Node2D


func _process(delta):
	if Vars.win == true:
		self.visible = false
	else :
		self.visible = true
