extends Node2D

export (PackedScene) var gameScene;

func _on_Start_pressed() -> void:
	# open game
	get_tree().change_scene_to(gameScene);

func _on_Quit_pressed() -> void:
	# quit game
	get_tree().quit();
