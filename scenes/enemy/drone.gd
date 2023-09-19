extends CharacterBody2D


func _process(_delta):
	var dir = Vector2.RIGHT
	velocity = dir * 100
	
	move_and_slide()
