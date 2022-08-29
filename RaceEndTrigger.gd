extends Area2D

func _ready():
	self.body_entered.connect(Callable(self, "end_race"))

func _process(delta):
	if RaceTimer.cur_race_state == RaceTimer.RACE_STATE.LOST:
		$StaticBody2D/CollisionShape2D.disabled = false
	else:
		$StaticBody2D/CollisionShape2D.disabled = true

func end_race(body):
	if body.name == "Player":
		if RaceTimer.cur_race_state == RaceTimer.RACE_STATE.LOST:
			return
		RaceTimer.win_race()
