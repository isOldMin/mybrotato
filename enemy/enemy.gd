extends CharacterBody2D

var speed = 300
var dir = null
var taget = null
var hp:int = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	taget = get_tree().get_first_node_in_group("player")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if taget:
		dir = (taget.global_position - self.global_position).normalized()
		velocity = dir * speed
		move_and_slide()
	pass
