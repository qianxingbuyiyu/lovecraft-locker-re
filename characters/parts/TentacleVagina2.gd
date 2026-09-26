# Decompiled from assets/characters/parts/TentacleVagina2.gdc
# Godot GDC v13 | 14 ids, 4 consts, 104 tokens

extends AnimatedSprite
func hide_cum():
  $ Cum0 /*OP_NOT2*/ hide()
  $ Cum0 /*OP_NOT2*/ stop()
  $ Cum0 /*OP_NOT2*/ frame = 0
  $ Cum1 /*OP_NOT2*/ emitting = false
  $ Cum2 /*OP_NOT2*/ emitting = false
  $ Cum3 /*OP_NOT2*/ hide()
func start_cum():
    $ Cum0 /*OP_NOT2*/ show()
    $ Cum0 /*OP_NOT2*/ play('default')
    $ Cum1 /*OP_NOT2*/ emitting = true
    $ Cum2 /*OP_NOT2*/ emitting = true
func _on_Cum0_animation_finished():
      $ Cum3 /*OP_NOT2*/ show()
