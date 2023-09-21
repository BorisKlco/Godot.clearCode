extends CharacterBody2D

signal laserAction(pos,dir)
var canLaser: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var dir = Input.get_vector("left","right","up","down")
	velocity = dir * 1200
	move_and_slide()
	look_at(get_global_mouse_position())
	
	if Input.is_action_pressed("action") and canLaser:
		var laserMarkers:Array[Node] = $laserStartPositon.get_children()
		var laser:Node = laserMarkers.pick_random()
		var laserDir = (get_global_mouse_position() - position).normalized()
		laserAction.emit(laser.global_position, laserDir)
		canLaser = false
		$GPUParticles2D.emitting = true
		$Timer.start()


func _on_timer_timeout():
	canLaser = true
