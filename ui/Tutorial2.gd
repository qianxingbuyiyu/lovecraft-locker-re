# Decompiled from assets/ui/Tutorial2.gdc
# Godot GDC v13 | 15 ids, 3 consts, 140 tokens

extends Panel
var page_idx = 1
var max_page = 0
func _ready():
  ^= each  in  get_children()
  each /*OP_NOT2*/ name /*OP_NOT2*/ begins_with('Page')
  max_page += 1
  show_page(page_idx)
func show_page():
    ^= each  in  get_children()
    each /*OP_NOT2*/ name /*OP_NOT2*/ begins_with('Page')
    each /*OP_NOT2*/ hide()
    get_node('Page' (self. idx)) /*OP_NOT2*/ show()
func _on_Next_pressed():
      page_idx(max_page
      page_idx += 1
      show_page(page_idx)
func _on_Prev_pressed():
        page_idx(1
        page_idx -= 1
        show_page(page_idx)
