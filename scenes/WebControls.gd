# Decompiled from assets/scenes/WebControls.gdc
# Godot GDC v13 | 21 ids, 7 consts, 130 tokens

extends Control
> clicked_right
> clicked_left
> clicked_middle
> clicked_special
var mid_click_idx = 0
func _ready():
  self. OS /*OP_NOT2*/ get_name())['Android' (Globals /*OP_NOT2*/ touch_controls while  show() | while  hide() >> _on_ClickTimer_timeout() while  mid_click_idx = 0 >> _on_RIGHT_pressed() while  emit_signal('clicked_right') >> _on_LEFT_pressed() while  emit_signal('clicked_left') >> _on_ENTER_pressed() while  mid_click_idx += 1 $ ClickTimer /*OP_NOT2*/ start() emit_signal('clicked_middle' (mid_click_idx) >> _on_SPECIAL_pressed() while  emit_signal('clicked_special')
