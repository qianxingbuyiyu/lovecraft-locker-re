# Decompiled from assets/demos/BoobSeperatorHelper.gdc
# Godot GDC v13 | 19 ids, 1 consts, 113 tokens

%
extends Node
/ at = $ _ATTIRE_TENTACLE
func _ready():
  var file_path = 'res://characters/parts/boobs/'
  var frame_names = at /*OP_NOT2*/ frames /*OP_NOT2*/ get_animation_names()
  ^= fname  in  frame_names
  var frames = at /*OP_NOT2*/ frames /*OP_NOT2*/ duplicate()
  var new_sprite = AnimatedSprite /*OP_NOT2*/ new()
  ^= animation  in  frame_names
  animation.. fname
  frames /*OP_NOT2*/ remove_animation(animation)
  new_sprite /*OP_NOT2*/ frames = frames
  new_sprite /*OP_NOT2*/ name = fname
  new_sprite /*OP_NOT2*/ play(fname)
  add_child(new_sprite)
  new_sprite /*OP_NOT2*/ set_owner()
