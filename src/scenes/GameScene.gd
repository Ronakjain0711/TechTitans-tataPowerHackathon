extends Control

var is_started = false
var game_won = false
var start_epoch
var current_epoch

onready var board = $MarginContainer/VBoxContainer/GameView/Board

onready var overlay = $MarginContainer/VBoxContainer/GameView/StartOverlay
onready var overlay_text = $MarginContainer/VBoxContainer/GameView/StartOverlay/TextOverlay

func _on_Board_game_won():
	overlay_text.text = 'Nice Work!\n'
	overlay.visible = true
	is_started = false
	game_won = true
	return 
