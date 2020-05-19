extends Node
var random = RandomNumberGenerator.new(); var time = 0; var score = 0
func _process(delta):
	self.time += delta
	if time > 0.5:
		var covid = load("res://Covid.tscn").instance()
		covid.connect("select", self, "on_unit_select")
		covid.position = Vector2(random.randf_range(0, get_viewport().get_visible_rect().size.x), random.randf_range(0, get_viewport().get_visible_rect().size.y))
		add_child(covid)
		self.time = 0
func on_unit_select(): 
	self.score += 1; get_node("score").set_text(str(self.score))
