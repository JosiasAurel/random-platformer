extends Timer



func _on_Timer_timeout() -> void:
	add_platform();

func add_platform() -> void:
	var parent: Node = get_parent();
	var last_child_position: Vector2 = parent.get_children()[-1].position;
	var new_platform = parent.platform.instance();
	print("Position before")
	print(new_platform.position)
	
	new_platform.position = last_child_position + Vector2(300, rand_range(-100, 100));
	print("Position After")
	print(new_platform.position)
	
	parent.add_child(new_platform)
	
