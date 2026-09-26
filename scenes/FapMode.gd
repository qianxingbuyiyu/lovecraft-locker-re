# Decompiled from assets/scenes/FapMode.gdc
# Godot GDC v13 | 101 ids, 33 consts, 1273 tokens

extends Node2D
/ lockerpopup = $ LockerPopup
/ modelmanager = $ LockerPopup
ModelManager
/ panel = $ Fapnel
var tentamouth = false
var autoplay = false
var boobs = [ ]
var sboobs = [ 'default' ('naked_d' ('naked_t1' ('naked_t2' ]
func _ready():
  ^= each  in  modelmanager /*OP_NOT2*/ get_children()
  each /*OP_NOT2*/ hide()
  Globals /*OP_NOT2*/ patreon_exclusive
  Globals /*OP_NOT2*/ exclusive_content
  $ Fapnel
  Models /*OP_NOT2*/ add_item(each /*OP_NOT2*/ name)
  |
  (each /*OP_NOT2*/ name /*OP_NOT2*/ begins_with('ModelAssassin') ((each /*OP_NOT2*/ name /*OP_NOT2*/ begins_with('ModelDragonmaid')
  $ Fapnel
  Models /*OP_NOT2*/ add_item(each /*OP_NOT2*/ name)
  |
  each /*OP_NOT2*/ queue_free()
  |


each /*OP_NOT2*/ name /*OP_NOT2*/ begins_with('ModelGirl') (each /*OP_NOT2*/ name /*OP_NOT2*/ ends_with('1')
$ Fapnel
Models /*OP_NOT2*/ add_item(each /*OP_NOT2*/ name)
|
each /*OP_NOT2*/ queue_free()
var model_a = modelmanager /*OP_NOT2*/ get_node('ModelGirlA1/_ATTIRE_TENTACLE')
var boobs_f = model_a /*OP_NOT2*/ frames /*OP_NOT2*/ get_animation_names()
^= each  in  boobs_f
boobs /*OP_NOT2*/ append(each)
^= each  in  boobs
$ Fapnel
Boobs /*OP_NOT2*/ add_item(each)
lockerpopup /*OP_NOT2*/ get_node('AnimationPlayer') /*OP_NOT2*/ play('intro')
$ BGMusic
Memories /*OP_NOT2*/ volume_db = Globals /*OP_NOT2*/ bgmusic_percentage
$ BGMusic
Click /*OP_NOT2*/ volume_db = Globals /*OP_NOT2*/ sfx_percentage
$ BGMusic
Selected /*OP_NOT2*/ volume_db = Globals /*OP_NOT2*/ sfx_percentage
var buttons = [ $ ChangeModel($ MainMenu($ Fapnel
Models(
$ Fapnel
Hairs($ Fapnel
Boobs($ Fapnel
TentaMouth(
$ Fapnel
ShowModel($ Fapnel
Cancel ]
^= each  in  buttons
each /*OP_NOT2*/ connect('focus_entered' (('play_focused')
each /*OP_NOT2*/ connect('mouse_entered' (('play_focused')
(each /*OP_NOT2*/ has_method('get_item_text')
each /*OP_NOT2*/ connect('pressed' (('play_clicked')
$ Fapnel
Models /*OP_NOT2*/ select(0)
$ Fapnel
Boobs /*OP_NOT2*/ select(0)
_on_Models_item_selected(0)
$ Music /*OP_NOT2*/ pressed = true
func play_clicked():
  $ BGMusic
  Click /*OP_NOT2*/ play()
func play_focused():
    $ BGMusic
    Selected /*OP_NOT2*/ play()
func _on_Cancel_pressed():
      panel /*OP_NOT2*/ visible
      $ Fapnel
      Anim /*OP_NOT2*/ play_backwards('intro')
func _on_ChangeModel_pressed():
        (panel /*OP_NOT2*/ visible
        $ Fapnel
        Anim /*OP_NOT2*/ play('intro')
func _on_ShowModel_pressed():
          var hair_color = $ Fapnel
          Hairs /*OP_NOT2*/ get_item_text($ Fapnel
          Hairs /*OP_NOT2*/ get_selected_items()[0 ])
          var bodytype = 'student'
          var override = - *
          var _model_name = $ Fapnel
          Models /*OP_NOT2*/ get_item_text($ Fapnel
          Models /*OP_NOT2*/ get_selected_items()[0 ])
          override['tentamouth' ] = tentamouth
          override['boobtype' ] = null
          override['haircolor' ] = hair_color
          override['modelname' ] = _model_name
          (_model_name /*OP_NOT2*/ begins_with('ModelDragonmaid')
          override['boobtype' ] = $ Fapnel
          Boobs /*OP_NOT2*/ get_item_text($ Fapnel
          Boobs /*OP_NOT2*/ get_selected_items()[0 ])
          lockerpopup /*OP_NOT2*/ locker_reset()
          lockerpopup /*OP_NOT2*/ initialize(null(null(override)
          lockerpopup /*OP_NOT2*/ _on_Next_pressed()
          _on_Cancel_pressed()
func _on_TentaMouth_pressed():
            (tentamouth
            tentamouth = true
            |
            tentamouth = false
func _on_MainMenu_pressed():
              BackgroundLoad /*OP_NOT2*/ load_scene(Globals /*OP_NOT2*/ path_menuscene)
func _on_Music_pressed():
                $ BGMusic
                Memories /*OP_NOT2*/ playing
                $ BGMusic
                Memories /*OP_NOT2*/ stop()
                |
                $ BGMusic
                Memories /*OP_NOT2*/ play()
func _on_AutoPlay_pressed():
                  autoplay = (autoplay
func _on_Timer_timeout():
                    lockerpopup /*OP_NOT2*/ model_active
                    autoplay
                    lockerpopup /*OP_NOT2*/ _on_Next_pressed()
func clean_list():
                      _listnode /*OP_NOT2*/ items /*OP_NOT2*/ size() (0
                      ^= _each  in  _listnode /*OP_NOT2*/ items
                      _listnode /*OP_NOT2*/ items /*OP_NOT2*/ size().. 0
                      _listnode /*OP_NOT2*/ remove_item(0)
func update_hair_list():
                        [ ])
                        clean_list($ Fapnel
                        Hairs)
                        ^= each  in  modelmanager /*OP_NOT2*/ get_node('ModelGirlA1/Head/HAIR_FRONT') /*OP_NOT2*/ get_children()
                        _list /*OP_NOT2*/ has(each /*OP_NOT2*/ name)
                        $ Fapnel
                        Hairs /*OP_NOT2*/ add_item(each /*OP_NOT2*/ name)
                        $ Fapnel
                        Hairs /*OP_NOT2*/ items /*OP_NOT2*/ size() (0
                        $ Fapnel
                        Hairs /*OP_NOT2*/ select(0)
func get_hair_list():
                          (_excepted = null)
                          var list = [ ]
                          _excepted
                          ^= each  in  modelmanager /*OP_NOT2*/ get_node('ModelGirlA1/Head/HAIR_FRONT') /*OP_NOT2*/ get_children()
                          (_excepted /*OP_NOT2*/ has(each /*OP_NOT2*/ name)
                          list /*OP_NOT2*/ append(each /*OP_NOT2*/ name)
                          |
                          ^= each  in  modelmanager /*OP_NOT2*/ get_node('ModelGirlA1/Head/HAIR_FRONT') /*OP_NOT2*/ get_children()
                          each /*OP_NOT2*/ name /*OP_NOT2*/ begins_with(_pre)
                          list /*OP_NOT2*/ append(each /*OP_NOT2*/ name)
                          % list
func _on_Models_item_selected():
                            var selected = $ Fapnel
                            Models /*OP_NOT2*/ get_item_text(index)
                            selected = selected /*OP_NOT2*/ replace('Model' ('')
                            var types = [ 'Teacher1' ('Dragonmaid' ('Assassin' ]
                            (selected /*OP_NOT2*/ begins_with('Girl')
                            ^= type  in  types
                            selected /*OP_NOT2*/ begins_with(type)
                            update_hair_list(get_hair_list(type))
                            -
                            selected /*OP_NOT2*/ begins_with('Dragonmaid')
                            $ Fapnel
                            Boobs /*OP_NOT2*/ hide()
                            |
                            $ Fapnel
                            Boobs /*OP_NOT2*/ show()
                            clean_list($ Fapnel
                            Boobs)
                            ^= each  in  sboobs
                            $ Fapnel
                            Boobs /*OP_NOT2*/ add_item(each)
                            $ Fapnel
                            Boobs /*OP_NOT2*/ select(0)
                            |
                            clean_list($ Fapnel
                            Boobs)
                            ^= each  in  boobs
                            $ Fapnel
                            Boobs /*OP_NOT2*/ add_item(each)
                            $ Fapnel
                            Boobs /*OP_NOT2*/ select(0)
                            var current_color_idx = 0
                            $ Fapnel
                            Hairs /*OP_NOT2*/ is_anything_selected()
                            current_color_idx = $ Fapnel
                            Hairs /*OP_NOT2*/ get_selected_items()[0 ]
                            $ Fapnel
                            Boobs /*OP_NOT2*/ show()
                            update_hair_list(get_hair_list('' (types))
                            current_color_idx($ Fapnel
                            Hairs /*OP_NOT2*/ items /*OP_NOT2*/ size()
                            $ Fapnel
                            Hairs /*OP_NOT2*/ select(current_color_idx)
