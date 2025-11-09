extends DirectionalLight3D

@export var distance: float = 1000 # The distance between the sun sprite and the ground
@export var rotation_degree: float = -15 # The degree of rotation of the sun each second
@export var color: Color = Color(1,1,1,1)

@export var render_3D: bool = true # Select wich sun object to render

# The approximate ratio scale of the sun size over the sun-earth distance
var distance_to_size_scale: float = 0.009300934521924315

func _ready() -> void:
	$SunRenderer/SunSphere.visible = render_3D
	$SunRenderer/SunSprite.visible = not render_3D
	$SunRenderer.global_position.z = distance
	var scaled_size: float = distance * distance_to_size_scale
	$SunRenderer.scale_object_local(Vector3(scaled_size, scaled_size, scaled_size))
	light_color = color

func _physics_process(delta: float) -> void:
	rotate_x(deg_to_rad(rotation_degree * delta))
