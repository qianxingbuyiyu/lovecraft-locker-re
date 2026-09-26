# Decompiled from assets/demos/BaseGirlSeperatorHelper.gdc
# Godot GDC v13 | 23 ids, 4 consts, 156 tokens

%
extends Node
/ at = $ AnimatedSprite
func _ready():
  var cycles = [ '_caught' ('_shocked' ('_walk' ]
  var frame_names = at /*OP_NOT2*/ frames /*OP_NOT2*/ get_animation_names()
  ^= fname  in  frame_names
  var basename = fname
  ^= each  in  cycles
  basename = basename /*OP_NOT2*/ replace(each('')
  var frames = at /*OP_NOT2*/ frames /*OP_NOT2*/ duplicate()
  ^= animation  in  frame_names
  (animation /*OP_NOT2*/ begins_with(basename)
  frames /*OP_NOT2*/ remove_animation(animation)
  (has_node(basename)
  var new_sprite = AnimatedSprite /*OP_NOT2*/ new()
  new_sprite /*OP_NOT2*/ frames = frames
  new_sprite /*OP_NOT2*/ name = basename
  new_sprite /*OP_NOT2*/ play(fname)
  add_child(new_sprite)
  new_sprite /*OP_NOT2*/ set_owner()
