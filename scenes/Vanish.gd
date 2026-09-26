# Decompiled from assets/scenes/Vanish.gdc
# Godot GDC v13 | 7 ids, 2 consts, 35 tokens

extends AnimatedSprite
func _ready():
  frame = 0
  show()
  play('default')
func _on_Vanish_animation_finished():
    queue_free()
