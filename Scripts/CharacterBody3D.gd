extends CharacterBody3D

var speed = 5


# Get the gravity from the project settings to be synced with RigidBody nodes.



func _process(delta):
	motion_ctrl()
	
func motion_ctrl() -> void:
	velocity.x = Global.get_axis().x * speed
	velocity.z = Global.get_axis().y * -speed
	move_and_slide()
	
