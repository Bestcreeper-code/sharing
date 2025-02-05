extends AnimatedSprite
var used = false
func _physics_process(delta):
	if used == false:
		frame = 2



func _on_Button9_pressed():

	if used == false:
		Vars.s9 = Vars.whosturn
		frame = Vars.whosturn
		Vars.whosturn = (Vars.whosturn - 1)*(Vars.whosturn - 1)
		used = true
