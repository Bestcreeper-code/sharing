extends Node2D
var win = false
var s1 = -1
var s2 = -1
var s3 = -1
var s4 = -1
var s5 = -1
var s6 = -1
var s7 = -1
var s8 = -1
var s9 = -1
var whosturn = 1
var whowon = -1
func _physics_process(delta):
	if win == true:
		if Input.is_action_just_released("ui_accept"):
			reset()




	if s1 == 0 :
		if s2 == 0 :
			if s3 == 0 :
				win = true

	if s4 == 0 :
		if s5 == 0 :
			if s6 == 0 :
				win = true

	if s7 == 0 :
		if s8 == 0 :
			if s9 == 0 :
				win = true

	if s1 == 0 :
		if s4 == 0 :
			if s7 == 0 :
				win = true

	if s2 == 0 :
		if s5 == 0 :
			if s8 == 0 :
				win = true

	if s3 == 0 :
		if s6 == 0 :
			if s9 == 0 :
				win = true

	if s1 == 0 :
		if s5 == 0 :
			if s9 == 0 :
				win = true

	if s3 == 0 :
		if s5 == 0 :
			if s7 == 0 :
				win = true




	if s1 == 1 :
		if s2 == 1 :
			if s3 == 1 :
				win = true

	if s4 == 1 :
		if s5 == 1 :
			if s6 == 1 :
				win = true

	if s7 == 1 :
		if s8 == 1 :
			if s9 == 1 :
				win = true

	if s1 == 1 :
		if s4 == 1 :
			if s7 == 1 :
				win = true

	if s2 == 1 :
		if s5 == 1 :
			if s8 == 1 :
				win = true

	if s3 == 1 :
		if s6 == 1 :
			if s9 == 1 :
				win = true

	if s1 == 1 :
		if s5 == 1 :
			if s9 == 1 :
				win = true

	if s3 == 1 :
		if s5 == 1 :
			if s7 == 1 :
				win = true
#tie
	if win == false:
		if ((s1+1)*(s2+1)*(s3+1)*(s4+1)*(s5+1)*(s6+1)*(s7+1)*(s8+1)*(s9+1)) != 0:
			print("tie")
			whowon = 2
			if Input.is_action_just_released("ui_accept"):
				reset()

#win
	if win == true:
		if whosturn == 0:
			print("O won")
			whowon = 0
		else:
			print("X won")
			whowon = 1
	print(win)

func reset():
	win = false
	s1 = -1
	s2 = -1
	s3 = -1
	s4 = -1
	s5 = -1
	s6 = -1
	s7 = -1
	s8 = -1
	s9 = -1
	print("reloading...") 
	get_tree().reload_current_scene()




func _on_reset_button_up():
	reset()

