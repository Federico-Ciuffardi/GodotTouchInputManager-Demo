extends Node2D

onready var label = $Label
onready var label2 = $Label2

func _input(event):
	if (event is InputEventMultiScreenDrag or
		event is InputEventSingleScreenDrag or
		event is InputEventScreenPinch or
		event is InputEventScreenTwist or
		event is InputEventSingleScreenTap or
		event is InputEventSingleScreenTouch):
			label.text = event.as_text()
	if event is InputEventMultiScreenDrag:
		label2.text = "Multiple finger drag"
	elif event is InputEventSingleScreenDrag:
		label2.text = "Single finger drag"
	elif event is InputEventScreenPinch:
		label2.text = "Pinch"
	elif event is InputEventScreenTwist:
		label2.text = "Twist"
	elif event is InputEventSingleScreenTap:
		label2.text = "Single finger tap"
	elif event is InputEventSingleScreenTouch:
		label2.text = "Single finger touch"
