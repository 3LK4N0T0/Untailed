
extends StaticBody3D



func _ready():
	pass
func _process(delta):
	pass


func _on_area_3d_body_entered(body):
	if(body.is_in_group("Player")):
		Dialogos.Dealer = true;
		


func _on_area_3d_body_exited(body):
	if(body.is_in_group("Player")):
		Dialogos.Dealer = false;
