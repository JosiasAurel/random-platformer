extends Node

export (PackedScene) var platform;

var x_offset = 400;


func prepare_() -> void:
	var timer: Timer = Timer.new();
	add_child(timer)
	# add_child(timer);
	timer.set_one_shot(true);
	# timer.set_wait_time(2);
	# timer.set_autostart(true);
	timer.start(2)
	
	if (timer.get_time_left() <= 1):
		print(timer.get_time_left())
		timer.queue_free()
	else:
		pass


func add_platform() -> void:
	var last_child_position: Vector2 = get_children()[-1].position;
	var new_platform = platform.instance();
	print("Position before")
	print(new_platform.position)
	
	new_platform.position = last_child_position + Vector2(x_offset, rand_range(-100, 100));
	print("Position After")
	print(new_platform.position)
	
	add_child(new_platform)
	


func _on_AudioStreamPlayer_finished() -> void:
	$AudioStreamPlayer.play(); # please dont stop playing
