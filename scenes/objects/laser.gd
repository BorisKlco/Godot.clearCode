extends Area2D

var speed:int = 1000 + randi_range(-250,250)
var dir: Vector2 = Vector2.UP
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += dir * speed * delta
