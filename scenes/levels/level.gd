extends Node2D

var screen:Vector2 = DisplayServer.window_get_size()

# Called when the node enters the scene tree for the first time.
func _ready():
	$player.position = Vector2(screen.x/2, screen.y/2)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
