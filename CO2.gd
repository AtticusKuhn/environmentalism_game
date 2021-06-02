extends RichTextLabel
#onready var co  = $CO2

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var co2 = 100
# Called when the node enters the scene tree for the first time.
func _ready():
	# var this = $Carbon
	#print(this)
	#get_tree().get_root().get_node("main_node/player").connect("plant_tree", self, "signal_handler", [])

	pass # Replace with function body.

#func signal_handler(amount):
#	print("signal_handler")
#	co2 -= amount#
#	set_text("there are"+str(co2)+"in")
#	print(co2 )
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#func _on_plant_tree():#
#	print("on plant tree"#)
	#pass # Replace with function body.


func _on_icon_plant_tree():
	print("extra arg")
	co2 -= 10#
	set_text("there are "+str(co2)+" tonnes of co2 in the atmosphere")

