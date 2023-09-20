extends CharacterBody2D

signal laserAction(pos)
var canLaser: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var dir = Input.get_vector("left","right","up","down")
	velocity = dir * 400
	move_and_slide()
	
	if Input.is_action_pressed("action") and canLaser:
		var laserMarkers:Array[Node] = $laserStartPositon.get_children()
		var laser:Node = laserMarkers.pick_random()
		laserAction.emit(laser.global_position)
		canLaser = false
		$Timer.start()
#	print(DisplayServer.mouse_get_position())


func _on_timer_timeout():
	canLaser = true
