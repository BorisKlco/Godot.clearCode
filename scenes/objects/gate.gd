extends StaticBody2D

signal playerGateEnter

func _on_entrance_area_body_entered(_body):
	playerGateEnter.emit()
