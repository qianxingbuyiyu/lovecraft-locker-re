# Decompiled from assets/scenes/HUD.gdc
# Godot GDC v13 | 6 ids, 1 consts, 35 tokens

extends CanvasLayer
func update_existence():
  $ ProgressBar /*OP_NOT2*/ value += _value
  self. $ ProgressBar /*OP_NOT2*/ value(0 ($ ProgressBar /*OP_NOT2*/ max_value)
