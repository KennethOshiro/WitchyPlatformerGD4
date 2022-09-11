extends Area2D

func _ready():
	body_entered.connect(win)
	#connect("body_entered", self, "win")

func win(body):
	if body.name == "Player":
		$Friendly2/AnimationPlayer.play("cast_spell")
