extends KinematicBody2D

var velocity = Vector2(0,0)
var direction = Vector2(0, 0)

const MOVE_SPEED = 150

func _physics_process(delta):
	self.velocity = Vector2(0,0)
	
	if Input.is_action_pressed("ui_right"):
		self.velocity.x = self.MOVE_SPEED
		self.direction.x = 1
	elif Input.is_action_pressed("ui_left"):
		self.velocity.x = -self.MOVE_SPEED
		self.direction.x = -1
	
	if Input.is_action_pressed("ui_up"):
		self.velocity.y = -self.MOVE_SPEED
		self.direction.y = -1
	elif Input.is_action_pressed("ui_down"):
		self.velocity.y = self.MOVE_SPEED
		self.direction.y = 1
	
	print(self.direction)
	self.move_and_slide(self.velocity)
