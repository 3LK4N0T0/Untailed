extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func Put_chat(text:String, name:String ,imagen:String):
	show()
	get_tree().paused = true
	$Panel/HBoxContainer/Text.Text = text
	$Panel/HBoxContainer/VBoxContainer/Name.Text = name
	$Panel/HBoxContainer/VBoxContainer/TextureRect.Texture = imagen

