extends RigidBody3D

var force_magnitude: float = 1000.00
var torque_magnitude: float = 100.00

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("boost"):
		apply_central_force(basis.y * delta * force_magnitude)
		
	if Input.is_action_pressed("rotate_left"):
		apply_torque(Vector3(0.0, 0.0, torque_magnitude * delta))
		
	if Input.is_action_pressed("rotate_right"):
		apply_torque(Vector3(0.0, 0.0, -torque_magnitude * delta))
