extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var dir = Input.get_vector("left","right","up","down")
	velocity = dir * 200
	move_and_slide()
	
	if Input.is_action_pressed("action"):
		print('Pog')
#	print(DisplayServer.mouse_get_position())
