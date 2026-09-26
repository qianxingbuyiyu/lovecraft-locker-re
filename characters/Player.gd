# Decompiled from assets/characters/Player.gdc
# Godot GDC v13 | 18 ids, 10 consts, 163 tokens

extends KinematicBody2D
/*OP_BIT_OR_INT*/ MOVE_SPEED = 500
/*OP_BIT_OR_INT*/ JUMP_FORCE = 1000
/*OP_BIT_OR_INT*/ GRAVITY = 50
/*OP_BIT_OR_INT*/ MAX_FALL_SPEED = 1000
/ sprite = $ Sprite
var y_velo = 0
var facing_right = false
func _physics_process():
  var move_dir = 0
  Input /*OP_NOT2*/ is_action_pressed('ui_right')
  move_dir += 1
  Input /*OP_NOT2*/ is_action_pressed('ui_left')
  move_dir -= 1
  move_and_slide(parent(move_dir(MOVE_SPEED(y_velo) (parent(0 ((1))
  var grounded = is_on_floor()
  y_velo += GRAVITY
  grounded(Input /*OP_NOT2*/ is_action_just_pressed('ui_up')
  y_velo = (JUMP_FORCE
  grounded(y_velo(0
  y_velo = 5
  y_velo(MAX_FALL_SPEED
  y_velo = MAX_FALL_SPEED
