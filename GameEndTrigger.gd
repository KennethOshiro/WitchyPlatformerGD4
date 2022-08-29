extends Area2D

func _ready():
	self.body_entered.connect(Callable(self, "win"))

func win(body):
	if body.name == "Player":
		$Friendly2/AnimationPlayer.play("cast_spell")
