extends TextEdit


func _process(delta):
	if Vars.whowon == 1:
		show()
	else:
		hide()
