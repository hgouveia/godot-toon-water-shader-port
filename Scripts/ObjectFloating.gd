extends Node3D


var initialPosition:Vector3;
var offset:float;
var height:float = 0.1;
var period:float = 1.0;
var time:float = 1.0;

# Called when the node enters the scene tree for the first time.
func _ready():
	initialPosition = get_position()
	offset = 1 - (randf() * 2)


func _process(delta):
	time += delta;
	set_position(initialPosition - Vector3.UP * sin((time + offset) * period) * height);
	
