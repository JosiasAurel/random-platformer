extends KinematicBody2D

export (int) var speed: int = 400;
export (int) var JUMP: int = 800;
export (int) var GRAVITY: int = 3000;
export (int) var jumps_count = 0;
export (int) var score = 0;
var motion: Vector2 = Vector2();

func _process(_delta: float) -> void:
	score += 0.05
	$Camera2D/score.text = str(floor(score));

func _physics_process(delta: float) -> void:
	get_input();
	motion.y += GRAVITY * delta
	
	if Input.is_action_just_pressed("ui_up"):
		if is_on_floor():
			motion.y -= JUMP
			$jump.play();
			jumps_count += 1;
			$Camera2D/jumps.text = str(jumps_count) + " jumps";
	
	motion = move_and_slide(motion, Vector2.UP)

func get_input() -> void:
	motion.x = 0;
	if Input.is_action_pressed("ui_left"):
		motion.x -= speed
	if Input.is_action_pressed("ui_right"):
		motion.x += speed
		
	
