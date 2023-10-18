extends StaticBody3D
class_name Npc

var Name : String = "Nacho"
var Text : String = "Im Nacho, Your Dealer Of opioides"
var Photo : String = "res://Assets/PlaceHolders/placeholder.png"


	

func _ready():
	pass







func _on_area_3d_body_entered(body):
	if body.is_in_group("Player"):
		Dialogos.Put_chat(Name,Text,Photo)
	else: 
		pass
