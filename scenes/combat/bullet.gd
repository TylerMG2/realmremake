extends KinematicBody2D

# Bullet vars
export var bullet_sprite = "bullet1.png"
export var speed = 100
export var direction = 180


# Called when the node enters the scene tree for the first time.
func _ready():
	
	# Load image
	var bullet_texture = Image.new()
	bullet_texture.load("res://sprites/weapons/bullets/" + bullet_sprite)
	
	# Create texture
	bullet_texture = ImageTexture.new()
	bullet_texture.create_from_image(bullet_texture, 0)
	get_node("sprite").texture = bullet_texture

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
