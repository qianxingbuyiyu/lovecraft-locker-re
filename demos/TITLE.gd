# Decompiled from assets/demos/TITLE.gdc
# Godot GDC v13 | 16 ids, 5 consts, 108 tokens

extends Node
func _ready():
  VisualServer /*OP_NOT2*/ viewport_set_transparent_background(get_viewport() /*OP_NOT2*/ get_viewport_rid() (true)
  self.)
func _input():
    Input /*OP_NOT2*/ is_action_just_pressed('ui_accept')
    capture()
func capture():
      self. 'captured')
      var img = get_viewport() /*OP_NOT2*/ get_texture() /*OP_NOT2*/ get_data()
      img /*OP_NOT2*/ flip_y()
      img /*OP_NOT2*/ save_png('user://' (self. self.)) ('.png')
