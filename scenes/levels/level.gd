extends Node2D

var laserScene:PackedScene = preload("res://scenes/objects/laser.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_gate_player_gate_enter():
	print("enter from Level Scene")


func _on_player_laser_action(playerPosition, laserDirection):
	var laser:Node = laserScene.instantiate() as Area2D
	laser.position = playerPosition
	laser.dir = laserDirection
	laser.rotate(laserDirection.angle())
	$projectiles.add_child(laser)
