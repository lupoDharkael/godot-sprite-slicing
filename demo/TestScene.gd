# MIT License
# Copyright (c) 2019 Lupo Dharkael

extends Node2D

var begin := Vector2.ZERO
var end := Vector2.ZERO
var draw_enabled := false


func _ready():
	pass


func _input(event : InputEvent):
	if event is InputEventMouseButton:
		if event.pressed:
			begin = event.position
			end = event.position
			draw_enabled = true
		else:
			draw_enabled = false
			end = event.position
			# redraw
			update()
			$Slicer2D.slice_world(begin, end)
	elif event is InputEventMouseMotion and draw_enabled:
		update()
		end = event.position

func _draw():
	if draw_enabled:
		draw_line(begin, end, Color.red)
