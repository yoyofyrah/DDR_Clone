extends Node2D


const ARROW_SPEED = 200

# define the direction of the arrow
const LEFT = 270
const UP = 0
const DOWN = 180
const RIGHT = 90

var arrow_direction = {
	0: LEFT,
	1: UP,
	2: DOWN,
	3: RIGHT
}

# define the arrow lane
const LEFT_LANE = Vector2(800, 1080)
const UP_LANE = Vector2(936, 1080)
const DOWN_LANE = Vector2(1072, 1080)
const RIGHT_LANE = Vector2(1200, 1080)

var arrow_lane = {
	0: LEFT_LANE,
	1: UP_LANE,
	2: DOWN_LANE,
	3: RIGHT_LANE,
}
