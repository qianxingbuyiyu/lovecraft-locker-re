# Decompiled from assets/ui/Indicator.gdc
# Godot GDC v13 | 5 ids, 0 consts, 25 tokens

extends Label
func _ready():
  /
func _on_AnimationPlayer_animation_finished():
    queue_free()
