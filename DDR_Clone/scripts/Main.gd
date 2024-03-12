extends Node2D

var arrow_track = preload("res://scenes/ArrowTrack.tscn")
var instance = arrow_track.instantiate()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	add_child(instance)
	
