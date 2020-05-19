extends Area2D; signal select
func _on_Covid_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed): 
		emit_signal("select"); get_parent().remove_child(self)
