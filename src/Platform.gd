extends StaticBody2D

# delete entire platform when out of viewport
func _on_VisibilityNotifier2D_viewport_exited(_viewport: Viewport) -> void:
	queue_free();
