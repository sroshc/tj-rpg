extends Area2D

# This node is meant to be a child node of the player
# Add whatever collisionshape2d necessary for the players interaction range

# This node is on layer 2, so are all other interactables
# Allows players to interact with interactable objects when they press the interact button

func _process(delta: float) -> void:
	if(Input.is_action_pressed("interact")):
		self.monitorable = true
	else:
		self.monitorable = false
