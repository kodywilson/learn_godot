extends KinematicBody2D

# Enemy stats
var curHp : int = 5
var maxHp : int = 5

var moveSpeed : int = 150
var xpToGive : int = 30

var damage : int = 1
var attackRate : float = 1.0
var attackDist : int = 80
var chaseDist : int = 400

onready var timer = $AttackTimer
onready var target = get_parent().get_node("Player")

func _ready():
	timer.wait_time = attackRate
	timer.start()

func _physics_process(delta):
	var dist = position.distance_to(target.position)
	
	if dist > attackDist and dist < chaseDist:
		var vel = (target.position - position).normalized()
		
		move_and_slide(vel * moveSpeed)

func _on_AttackTimer_timeout():
	if position.distance_to(target.position) <= attackDist:
		target.take_damage(damage)

func take_damage(dmgToTake):
	curHp -= dmgToTake
	
	if curHp <= 0:
		die()
		
func die():
	target.give_xp(xpToGive)
	queue_free()
