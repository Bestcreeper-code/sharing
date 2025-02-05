extends RichTextLabel

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		hide()

	if Vars.whowon == 2:
		clear()
		text = "Tie"
		show()
	else:
		hide()
