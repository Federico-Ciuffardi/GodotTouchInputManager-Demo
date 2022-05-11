extends Node2D

onready var label = $Label
onready var label2 = $Label2
# onready var label3 = $Label3
# onready var label4 = $Label4
# onready var label5 = $Label5

func _input(event):
	if (event is InputEventMultiScreenDrag or
		event is InputEventMultiScreenSwipe or
		event is InputEventMultiScreenTap or
		event is InputEventMultiScreenLongPress or
		event is InputEventSingleScreenDrag or
		event is InputEventScreenPinch or
		event is InputEventScreenTwist or
		event is InputEventSingleScreenTap or
		event is InputEventSingleScreenLongPress or
		event is InputEventSingleScreenTouch or
		event is InputEventSingleScreenSwipe):
			label.text = event.as_text().replace('|','\n') 

	if event is InputEventMultiScreenDrag:
		label2.text = "Multiple finger drag"
	elif event is InputEventMultiScreenSwipe:
		label2.text = "Multiple finger swipe"
	elif event is InputEventMultiScreenTap:
		label2.text = "Multiple finger tap"
	elif event is InputEventMultiScreenLongPress:
		label2.text = "Multiple finger long press"
	elif event is InputEventSingleScreenDrag:
		label2.text = "Single finger drag"
	elif event is InputEventSingleScreenSwipe:
		label2.text = "Single finger swipe"
	elif event is InputEventScreenPinch:
		label2.text = "Pinch"
	elif event is InputEventScreenTwist:
		label2.text = "Twist"
	elif event is InputEventSingleScreenLongPress:
		label2.text = "Single finger long press"
	elif event is InputEventSingleScreenTap:
		label2.text = "Single finger tap"
	elif event is InputEventSingleScreenTouch:
		label2.text = "Single finger touch"

	# if event is RawGesture:
	# 	label3.text = "State now:\n" + event.as_text()
	# 	var rollback_res = event.rollback_relative(0.5)
	# 	var rollback_event = rollback_res[0]
	# 	var discarded_events = rollback_res[1]
	# 	label4.text = "State 0.5s ago:\n" + rollback_event.as_text()

	# 	var text = str(rollback_event.active_touches) + " |"
	# 	for e in discarded_events:
	# 		text += str(e.index)
	# 		if e is RawGesture.Drag:
	# 			text += "D "
	# 		else:
	# 			text += "T "
	# 	label5.text = "Events in the last 0.5s:\n"+text

