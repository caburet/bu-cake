extends Node

func _ready():
	
	spawn()
	pass


func _on_timer_timeout():
   spawn()
#----------------------------------------------------------------------------------
func spawn():
	var bulletscene = preload("res://vaso.tscn")
	var bullet = bulletscene.instance()
	add_child(bullet)
	print ("cargo")

func _on_Timer_timeout():
	spawn()
	pass # Replace with function body.
func _physics_process(delta):
	$Label.text=str(Globals.points)