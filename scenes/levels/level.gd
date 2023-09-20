extends Node2D

var screen:Vector2 = DisplayServer.window_get_size()
var laserScene:PackedScene = preload("res://scenes/objects/laser.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass



func _on_gate_player_gate_enter():
	print("enter from Level Scene")


func _on_player_laser_action(playerPosition):
	var laser:Node = laserScene.instantiate()
	laser.position = playerPosition
	add_child(laser)
