extends Sprite2D

var scaleLogo: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	scale = Vector2(0.2,0.2)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if scale.x > 0.3 or scale.x < 0.2:
		scaleLogo = not scaleLogo
	if scaleLogo:
		scale.x += 0.2 * delta
		scale.y += 0.2 * delta
	else:
		scale.x -= 0.2 * delta
		scale.y -= 0.2 * delta

