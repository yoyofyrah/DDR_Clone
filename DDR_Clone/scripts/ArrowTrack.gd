extends Node2D

@export var song_bpm: int = 0

var arrow = preload("res://scenes/Arrow.tscn")
var arrow_instance = arrow.instantiate()

var tick
var song_length
var time_begin
var time_delay


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	time_begin = Time.get_ticks_usec()
	time_delay = AudioServer.get_time_to_next_mix() + AudioServer.get_output_latency()
	song_length = get_node("Song").stream.get_length()
	var tick = (song_bpm / 60) * song_length
	# arrows instantiate on each tick with a random lane and direction and then move up
	$Song.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Obtain from ticks
	var time = (Time.get_ticks_usec() - time_begin) / 1000000.0
	# Compensate for latency
	time -= time_delay
	# May be below 0 (did not begin yet)
	time = max(0, time)
	print("Time is: ", time)
