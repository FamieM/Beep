extends Area2D
var speed =200.0
func _process(delta):
	position.y += speed*delta
	if position.y > 700:
		queue_free()
func _on_body_entered(body):
	if body.has_method("hit"):
		body.hit()
		queue_free()
	
