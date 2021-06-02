extends Sprite
signal reduce_co2

# Declare member variables here. Examples:
# var a = 2
# var b = "text"



var width = 0.1
var height = 0.1

# Called when the node enters the scene tree for the first time.
func _ready():
	#connect("reduce_co2", self, "signal_handler", [])
	#var tree = get_tree().get_root().get_node("/root/main_node/CO2")

	var this = get_node(".")
	this.set_scale(Vector2(width, height))
	var _timer = Timer.new()
	add_child(_timer)
	_timer.connect("timeout", self, "_on_Timer_timeout")
	_timer.set_wait_time(1.0)
	_timer.set_one_shot(false) # Make sure it loops
	_timer.start()

func _on_Timer_timeout():
	var this = get_node(".")
	this.set_scale(Vector2(width, height))
	width= min(2, width+0.1)
	height=min(2, height+0.1)
	emit_signal("reduce_co2", width*height)






# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
