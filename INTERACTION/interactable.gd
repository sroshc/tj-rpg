extends Area2D

# This signal is sent out when the player interacts with the interactable
signal interacted


# This node should be a child of any interactable object
# It's on collision layer 2, and all interactions should be on layer 2
# You should add a Shape2d to give it whatever shape necessary


func disable() -> void:
	self.monitoring = false
	
func enable() -> void:
	self.monitoring = true
	
func _on_area_exited(area: Area2D) -> void:
	emit_signal("interacted")
