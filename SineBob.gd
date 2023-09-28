extends Label3D

@export var period: float = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var ticks = Time.get_ticks_msec()
	var t = cos(ticks / 1000.0 / self.period / TAU)
	translate_object_local(transform.basis.y * t)

