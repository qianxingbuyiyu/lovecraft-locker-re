# Decompiled from assets/demos/BaseFaceSeperatorHelper.gdc
# Godot GDC v13 | 28 ids, 18 consts, 218 tokens

%
extends Node
/ at = $ Face
func _ready():
  var cycles = [ '_angry' ('_default' ('_distressed' ('_pouty' ('_sleepy' ]
  var exceptions = [ 'caught' ('climaxed' ('confused' ('curious' ('distressed' ('dizzy' ('dizzyflat' (
  'loved' ('pouty' ('shocked' ]
  var frame_names = at /*OP_NOT2*/ frames /*OP_NOT2*/ get_animation_names()
  ^= fname  in  frame_names
  var basename = fname
  var core = false
  ^= each  in  cycles
  basename /*OP_NOT2*/ ends_with(each)
  core = true
  basename = basename /*OP_NOT2*/ replace(each('')
  core
  var frames = at /*OP_NOT2*/ frames /*OP_NOT2*/ duplicate()
  ^= animation  in  frame_names
  (exceptions /*OP_NOT2*/ has(animation)
  (animation /*OP_NOT2*/ begins_with(basename)
  frames /*OP_NOT2*/ remove_animation(animation)
  (has_node(basename)
  var new_sprite = AnimatedSprite /*OP_NOT2*/ new()
  new_sprite /*OP_NOT2*/ frames = frames
  new_sprite /*OP_NOT2*/ name = basename
  new_sprite /*OP_NOT2*/ play(fname)
  add_child(new_sprite)
  new_sprite /*OP_NOT2*/ set_owner()
