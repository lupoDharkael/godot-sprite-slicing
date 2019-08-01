# MIT License
# Copyright (c) 2019 Lupo Dharkael

extends Sliceable2D

# Use this to limit the number of cuts
#const cut_limit_val = 3


func _ready():
	pass

# Called everytime the object is sliced
func _on_sprite_sliced(data):
	print("sliced! cut number ", data.cut_number)
