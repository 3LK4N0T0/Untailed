extends Control
const IcoDealer = preload("res://Assets/PlaceHolders/placeholder.png")
var chat:int = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _active(NAME:String,TEXT:String,IMAGE:Texture)->void:
	$Panel.show()
	$Panel/HBoxContainer/Text.text = TEXT;
	$Panel/HBoxContainer/VBoxContainer/Name.text = NAME;
	$Panel/HBoxContainer/VBoxContainer/TextureRect.texture = IMAGE;

func _process(delta):
	if(Dialogos.Dealer == false):
		$Panel.hide()
	
func _change() -> void:
	pass
	



func _on_activator_body_entered(body):
	#Dealer
	if(Dialogos.Dealer == true):
		_active(Dialogos.dialogos.npc.Dealer[0],Dialogos.dialogos.npc.Dealer[chat],IcoDealer)
		
	
		
	


func _on_button_pressed():
	if(chat >= Dialogos.dialogos.npc.Dealer.size()-1):
		chat = 1;
		hide();
	else:
		chat += 1;
		_active(Dialogos.dialogos.npc.Dealer[0],Dialogos.dialogos.npc.Dealer[chat],IcoDealer)
