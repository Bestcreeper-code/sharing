extends RichTextLabel


func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		hide()
	if Vars.whowon == 0:
		clear()
		text = "O won"
		show()
	else:
		hide()

