extends Sprite
var tree = preload("tree.tscn")
signal plant_tree


var speed = 2 * 60

func _process(delta):
	var dir = Vector2.ZERO
	dir.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	dir.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	#dir.x = Input.get_action_strength("Right") - Input.get_action_strength("Left")
	#dir.y = Input.get_action_strength("Down") - Input.get_action_strength("Up")
	translate(dir * speed * delta)

func _input(ev):
	if Input.is_action_just_pressed("plant_tree"):
		#print("plant tree")
		var new_tree = tree.instance()
		var parent = get_tree().get_root().get_node("main_node")
		emit_signal("plant_tree")
		parent.add_child(new_tree)
		new_tree.position = self.position
		#var tree = get_node("../../Tree/tree")
		#var new_tree = tree.duplicate()
		#new_tree.position = self.position
		#new_tree.visible = true
		#print(new_tree.position )
		#print(new_tree)
		
		
