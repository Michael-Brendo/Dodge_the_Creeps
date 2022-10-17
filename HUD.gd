extends CanvasLayer

signal start_game

func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()
	
func show_game_over():
	show_message("Game Over")
	
	yield($MessageTimer, "timeout")
	
	$Message.text = "Dodge the/nCreapes!"
	$Message.show()
	
	yield(get_tree().create_timer(1), "timeout")
	$StartButton.show()
	
func update_score(score):
	$ScoreLabel.text = str(score)
	





func _on_MessageTimer_timeout():
	pass # Replace with function body.


func _on_StartButton_pressed():
	pass # Replace with function body.
