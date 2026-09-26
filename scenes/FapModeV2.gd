# Decompiled from assets/scenes/FapModeV2.gdc
# Godot GDC v13 | 203 ids, 87 consts, 4120 tokens

extends Node2D
/*OP_SHIFT_RIGHT_INT*/ (parent) LOCAL = true
/*OP_SHIFT_RIGHT_INT*/ (parent) debug = false
/ lockerpopup = $ Popup
LockerPopup
/ modelmanager = $ Popup
LockerPopup
ModelManager
/ models = $ Panel
Models
/ hairs = $ Panel
Hairs
/ boobs = $ Panel
Boobs
/ anim = $ AnimationPlayer
/ currency_node = $ Price2
/ price_button = $ Panel
ItemPrice
var thumbs = Thumbnails /*OP_NOT2*/ new()
var e = Economy /*OP_NOT2*/ new()
var tentamouth = false
var prev_hair_idx = 0
var prev_boob_idx = 0
var autoplay = false
var randomize_disabled = false
var active_price = 0
var active_item = null
var selected_model = 0
var selected_boob = 0
var selected_hair = 0
var showing = false
var demo_seen_once = false
func _ready():
  lockerpopup /*OP_NOT2*/ get_node('AnimationPlayer') /*OP_NOT2*/ play('intro')
  $ AnimationPlayer /*OP_NOT2*/ play('intro')
  Globals /*OP_NOT2*/ fap_ref /*OP_NOT2*/ has('models')
  var items = Globals /*OP_NOT2*/ fap_ref['models' ]
  ^= each  in  items
  var img = items[each ][1 ]
  models /*OP_NOT2*/ add_icon_item(img)
  |
  load_gallery_items(models('models' (null(LOCAL)
  load_gallery_items(models('s_models' (null(LOCAL)
  (Globals /*OP_NOT2*/ fap_ref /*OP_NOT2*/ has('hairs')
  load_gallery_items(hairs('hairs' (null(LOCAL)
  (Globals /*OP_NOT2*/ fap_ref /*OP_NOT2*/ has('boobs')
  load_gallery_items(boobs('boobs' (null(LOCAL)
  boobs /*OP_NOT2*/ clear()
  hairs /*OP_NOT2*/ clear()
  models /*OP_NOT2*/ select(0)
  _on_Models_item_selected(0)
  gallery_items_pricing_colors(models('models')
  $ BGMusic
  Click /*OP_NOT2*/ volume_db = Globals /*OP_NOT2*/ sfx_percentage
  $ BGMusic
  Selected /*OP_NOT2*/ volume_db = Globals /*OP_NOT2*/ sfx_percentage
  lockerpopup /*OP_NOT2*/ load_volumes((80)
  var buttons = [ $ ShowPanel($ MainMenu($ Panel
  Models(
  $ Panel
  Hairs($ Panel
  Boobs($ Panel
  TentaMouth(
  $ Panel
  Update($ Show($ AutoPlay ]
  ^= each  in  buttons
  each /*OP_NOT2*/ connect('focus_entered' (('play_focused')
  each /*OP_NOT2*/ connect('mouse_entered' (('play_focused')
  (each /*OP_NOT2*/ has_method('get_item_text')
  each /*OP_NOT2*/ connect('pressed' (('play_clicked')
  update_currency()
  lockerpopup /*OP_NOT2*/ FAP_MODE = true
  Globals /*OP_NOT2*/ demo_version
  BackgroundLoad /*OP_NOT2*/ show_demo(true('Demo version is limited.')
func update_currency():
    Globals /*OP_NOT2*/ load_game()
    currency_node /*OP_NOT2*/ bbcode_text = '[right]' (Globals /*OP_NOT2*/ heart_big(e /*OP_NOT2*/ get_num_format(Globals /*OP_NOT2*/ currency)
func get_item_by_image():
      (ref_folder(idx)
      idx(listnode /*OP_NOT2*/ get_item_count()
      var listnode_texture = listnode /*OP_NOT2*/ get_item_icon(idx)
      var items = Globals /*OP_NOT2*/ fap_ref[ref_folder ]
      ^= each  in  items
      var d = items[each ]
      var img = d[1 ]
      var fname = d[0 ]
      img[listnode_texture while  % fname % null >> get_item_price_by_image(listnode(ref_folder(idx) while  idx(listnode /*OP_NOT2*/ get_item_count() while  listnode_texture = listnode /*OP_NOT2*/ get_item_icon(idx) items = Globals /*OP_NOT2*/ fap_ref[ref_folder ]
      ^= each  in  items
      var img = items[each ][1 ]
      img[listnode_texture while  % items[each ][2 ]
      % 0
func gallery_items_pricing_colors():
        (ref_folder)
        ^= i  in  self. 0 (listnode /*OP_NOT2*/ get_item_count())
        var _fname = get_item_by_image(listnode(ref_folder(i)
func is_purchased():
          listnode /*OP_NOT2*/ set_item_icon_modulate(i(parent('FFFFFF'))
          |
          listnode /*OP_NOT2*/ set_item_icon_modulate(i(parent('121212'))
func is_purchased():
            Globals /*OP_NOT2*/ purchases /*OP_NOT2*/ has(_fname)
            % true
            % false
func is_exclusive():
              var f = _fname /*OP_NOT2*/ replace('Model' ('')
              f = f /*OP_NOT2*/ replace('s_' ('')
              f = f /*OP_NOT2*/ to_lower()
              ^= each  in  Globals /*OP_NOT2*/ special_hairs
              var _hair = each /*OP_NOT2*/ to_lower()
              (_hair /*OP_NOT2*/ begins_with(f) (f[_hair) ((Globals /*OP_NOT2*/ nonexclusive /*OP_NOT2*/ has(f /*OP_NOT2*/ capitalize()) while  % true % false >> update_price_button() while  active_item while  price_button /*OP_NOT2*/ bbcode_text = '[right][img]res://assets/ui/heart_emoji_big.png[/img] ' (self. active_price) active_boobs = null active_hair = null active_model = null boobs /*OP_NOT2*/ is_anything_selected() while  active_boobs = get_item_by_image(boobs('boobs' (boobs /*OP_NOT2*/ get_selected_items()[0 ])
              hairs /*OP_NOT2*/ is_anything_selected()
              active_hair = get_item_by_image(hairs('hairs' (hairs /*OP_NOT2*/ get_selected_items()[0 ])
              models /*OP_NOT2*/ is_anything_selected()
              active_model = get_item_by_image(models('models' (models /*OP_NOT2*/ get_selected_items()[0 ])
              active_boobs(active_hair(active_model
func is_purchased():
                (is_purchased(active_hair) (is_purchased(active_model)
                $ Show /*OP_NOT2*/ disabled = false
                lockerpopup /*OP_NOT2*/ modulate = parent('FFFFFF')
                |
                $ Show /*OP_NOT2*/ disabled = true
                lockerpopup /*OP_NOT2*/ modulate = parent('121212')
func purchase():
                  active_item
                  $ Notifier
                  LevelPanel
                  AnimationPlayer /*OP_NOT2*/ is_playing()
                  $ Notifier
                  LevelPanel
                  AnimationPlayer /*OP_NOT2*/ play('RESET')
                  $ Notifier
                  LevelPanel
                  AnimationPlayer /*OP_NOT2*/ play('intro')
                  (is_purchased(active_item)
                  Globals /*OP_NOT2*/ exclusive_content[false(is_exclusive(active_item) while  notify('[center]UNLOCK ON PATREON!!!') &= Globals /*OP_NOT2*/ demo_version((Globals /*OP_NOT2*/ demo_items /*OP_NOT2*/ has(active_item) while(demo_seen_once while  demo_seen_once = true BackgroundLoad /*OP_NOT2*/ show_demo(true('Demo version is limited.') | while  notify('[center]FULL VERSION ONLY!!!') &= active_price(Globals /*OP_NOT2*/ currency while  Globals /*OP_NOT2*/ currency -= active_price Globals /*OP_NOT2*/ save_game() save_purchase(active_item) show_model() notify('[center]ITEM UNLOCKED!') | while  price_button /*OP_NOT2*/ get_node('Anim') /*OP_NOT2*/ play('anim') currency_node /*OP_NOT2*/ get_node('Anim') /*OP_NOT2*/ play('anim') notify('[center]NOT ENOUGH[img]res://assets/ui/Heart_00399.png[/img]LUST!') update_currency() >> save_purchase(_fname) while  Globals /*OP_NOT2*/ load_game() Globals /*OP_NOT2*/ purchases /*OP_NOT2*/ append(_fname) Globals /*OP_NOT2*/ save_game() >> load_gallery_items(listnode(folder = 'models' (color = null(_local = true) while  directory = 'res://assets/thumbnail/' (folder('/' images = thumbs /*OP_NOT2*/ imglist(folder) (_local while  images = Globals /*OP_NOT2*/ get_dir_files(directory(true) idx = 0 ref_folder = folder /*OP_NOT2*/ replace('s_' ('') Globals /*OP_NOT2*/ fap_ref /*OP_NOT2*/ has(ref_folder) while  idx = Globals /*OP_NOT2*/ fap_ref[ref_folder]/*OP_NOT2*/ size()
                  |
                  Globals /*OP_NOT2*/ fap_ref[ref_folder ] = - *
                  ^= each  in  images

                var fname = each /*OP_NOT2*/ replace(directory('') /*OP_NOT2*/ replace('.png' ('')
                var img = null
                Globals /*OP_NOT2*/ fap_ref[ref_folder]/*OP_NOT2*/ has(idx)
                Globals /*OP_NOT2*/ fap_ref[ref_folder ][idx]/*OP_NOT2*/ has(fname)
                img = Globals /*OP_NOT2*/ fap_ref[ref_folder ][idx ][1 ]
                |
                self. 'blank resource @ load_gallery items')
                |
                img = self. each)
                var multiplier = 1.5
                Globals /*OP_NOT2*/ patreon_exclusive[false while  multiplier = 3 price = e /*OP_NOT2*/ get_price(fname(30 (multiplier) Globals /*OP_NOT2*/ fap_ref[ref_folder ][idx]=[fname(img(price ]
                idx(4
                Globals /*OP_NOT2*/ demo_items /*OP_NOT2*/ append(fname)
                idx += 1
                listnode /*OP_NOT2*/ add_icon_item(img)
                color
                listnode /*OP_NOT2*/ set_item_custom_bg_color(idx(parent(color))
func play_clicked():
                  $ BGMusic
                  Click /*OP_NOT2*/ play()
func play_focused():
                    $ BGMusic
                    Selected /*OP_NOT2*/ play()
func notify():
                      $ Notifier
                      LevelPanel
                      Level /*OP_NOT2*/ bbcode_text = _text
                      $ Notifier
                      LevelPanel
                      AnimationPlayer /*OP_NOT2*/ play('intro')
func show_model():
                        var hair_color = null
                        var boobtype = null
                        var __modelname = Globals /*OP_NOT2*/ fap_ref['models' ][selected_model ][0 ]
                        var override = -
                        'tentamouth'
                        tentamouth(
                        'haircolor'
                        null(
                        'modelname'
                        __modelname(
                        'boobtype'
                        null *
                        var clear = true
                        hairs /*OP_NOT2*/ is_anything_selected()
                        hair_color = get_item_by_image(hairs('hairs' (selected_hair)
                        |
                        clear = false
                        boobs /*OP_NOT2*/ is_anything_selected()
                        boobtype = get_item_by_image(boobs('boobs' (selected_boob)
                        |
                        clear = false
                        Globals /*OP_NOT2*/ exclusive_content[false(is_exclusive(active_item) while  notify('[center]UNLOCK ON PATREON!') &= Globals /*OP_NOT2*/ demo_version((Globals /*OP_NOT2*/ demo_items /*OP_NOT2*/ has(active_item) while  notify('[center]FULL VERSION ONLY!') &= Globals /*OP_NOT2*/ demo_version((Globals /*OP_NOT2*/ demo_items /*OP_NOT2*/ has(boobtype) while  notify('[center]FULL VERSION ONLY!') &= Globals /*OP_NOT2*/ demo_version((Globals /*OP_NOT2*/ demo_items /*OP_NOT2*/ has(hair_color) while  notify('[center]FULL VERSION ONLY!') | while  self. override['modelname' ])
                        override['boobtype' ] = boobtype
                        override['haircolor' ] = hair_color
                        ^= each  in  override /*OP_NOT2*/ keys()
                        override[each ][null while  % face_idx = 0 ^= each  in  $ Faces /*OP_NOT2*/ get_children() while  each /*OP_NOT2*/ pressed while  face_idx = parent(each /*OP_NOT2*/ name /*OP_NOT2*/ replace('FaceType' ('')) (1 - lockerpopup /*OP_NOT2*/ face_idx = face_idx lockerpopup /*OP_NOT2*/ speed_value = 0 lockerpopup /*OP_NOT2*/ locker_reset() clear while  lockerpopup /*OP_NOT2*/ initialize(null(null(override) lockerpopup /*OP_NOT2*/ _on_Next_pressed() lockerpopup /*OP_NOT2*/ play_tentacle_sounds(true) gallery_items_pricing_colors(models('models') gallery_items_pricing_colors(hairs('hairs') gallery_items_pricing_colors(boobs('boobs') update_price_button() >> _on_Boobs_item_selected(index) while  selected_boob = index active_price = get_item_price_by_image(boobs('boobs' (selected_boob) active_item = get_item_by_image(boobs('boobs' (selected_boob) show_model() >> _on_Hairs_item_selected(index) while  selected_hair = index active_price = get_item_price_by_image(hairs('hairs' (selected_hair) active_item = get_item_by_image(hairs('hairs' (selected_hair) show_model() >> _on_Models_item_selected(index) while  selected_model = index modelname = Globals /*OP_NOT2*/ fap_ref['models' ][selected_model ][0 ]
                        hairs /*OP_NOT2*/ is_anything_selected()
                        prev_hair_idx = hairs /*OP_NOT2*/ get_selected_items()[0 ]
                        boobs /*OP_NOT2*/ is_anything_selected()
                        prev_boob_idx = boobs /*OP_NOT2*/ get_selected_items()[0 ]
                        hairs /*OP_NOT2*/ clear()
                        boobs /*OP_NOT2*/ clear()
                        var students = [ 'ModelGirl' ('ModelPatient' ('ModelSwim' ('ModelBikini' ]
                        var is_student = false
                        ^= each  in  students
                        modelname /*OP_NOT2*/ begins_with(each)
                        is_student = true
                        -
                        is_student
                        var items = Globals /*OP_NOT2*/ fap_ref['hairs' ]
                        ^= each  in  items
                        var d = items[each ]
                        var img = d[1 ]
                        var fname = d[0 ]
                        (debug
                        (Globals /*OP_NOT2*/ special_chars /*OP_NOT2*/ has(fname)
                        hairs /*OP_NOT2*/ add_icon_item(img)
                        |
                        hairs /*OP_NOT2*/ add_icon_item(img)
                        prev_hair_idx(hairs /*OP_NOT2*/ get_item_count()
                        hairs /*OP_NOT2*/ select(prev_hair_idx)
                        |
                        hairs /*OP_NOT2*/ select(0)
                        var boobies = Globals /*OP_NOT2*/ fap_ref['boobs' ]
                        ^= each  in  boobies
                        var d = boobies[each ]
                        var img = d[1 ]
                        var fname = d[0 ]
                        fname /*OP_NOT2*/ ends_with('s_d')
                        fname = fname /*OP_NOT2*/ replace('_d' ('') /*OP_NOT2*/ replace('s_' ('')
                        |
                        fname = fname /*OP_NOT2*/ replace('s_' ('') /*OP_NOT2*/ replace('_d' ('')
                        (Globals /*OP_NOT2*/ special_chars /*OP_NOT2*/ has(fname /*OP_NOT2*/ capitalize() /*OP_NOT2*/ replace(' ' ('')) ((fname /*OP_NOT2*/ begins_with('naked_giant')
                        modelname /*OP_NOT2*/ begins_with('ModelPatient') ((fname /*OP_NOT2*/ begins_with('patient') (fname /*OP_NOT2*/ begins_with('naked_'))
                        boobs /*OP_NOT2*/ add_icon_item(img)
                        &= modelname /*OP_NOT2*/ begins_with('ModelBikini') ((fname /*OP_NOT2*/ begins_with('bikini') (fname /*OP_NOT2*/ begins_with('naked_'))
                        boobs /*OP_NOT2*/ add_icon_item(img)
                        &= modelname /*OP_NOT2*/ begins_with('ModelSwim') ((fname /*OP_NOT2*/ begins_with('swim') (fname /*OP_NOT2*/ begins_with('naked_'))
                        var _s = [ 'ModelSwimA2' ('ModelSwimB1' ('ModelSwimD2' ]
                        var _ns = [ 'ModelSwimG1' ('ModelSwimG2' ]
                        var _ns_boobs = [ 'naked_small_t3' ('naked_small_t4' ('naked_big_t3' ('naked_big_t4' ]
                        var _s2 = [ 'swim_small_e' ('swim_big_e' ]
                        _ns /*OP_NOT2*/ has(modelname) (_ns_boobs /*OP_NOT2*/ has(fname)
                        boobs /*OP_NOT2*/ add_icon_item(img)
                        &= _s /*OP_NOT2*/ has(modelname) (_s2 /*OP_NOT2*/ has(fname)
                        boobs /*OP_NOT2*/ add_icon_item(img)
                        &= (_s /*OP_NOT2*/ has(modelname) ((_ns /*OP_NOT2*/ has(modelname)
                        boobs /*OP_NOT2*/ add_icon_item(img)
                        &= fname /*OP_NOT2*/ begins_with('naked_')
                        boobs /*OP_NOT2*/ add_icon_item(img)
                        &= modelname /*OP_NOT2*/ begins_with('ModelGirl') ((fname /*OP_NOT2*/ begins_with('g1_') (fname /*OP_NOT2*/ begins_with('default') (fname /*OP_NOT2*/ begins_with('u_') (fname /*OP_NOT2*/ begins_with('naked_'))
                        (modelname /*OP_NOT2*/ begins_with('ModelGirlG')
                        (fname /*OP_NOT2*/ begins_with('g1_')
                        boobs /*OP_NOT2*/ add_icon_item(img)
                        |
                        fname /*OP_NOT2*/ begins_with('g1_')
                        boobs /*OP_NOT2*/ add_icon_item(img)
                        prev_boob_idx(boobs /*OP_NOT2*/ get_item_count()
                        boobs /*OP_NOT2*/ select(prev_boob_idx)
                        |
                        boobs /*OP_NOT2*/ select(0)
                        |
                        var _model = modelname /*OP_NOT2*/ replace('Model' ('')
                        var items = Globals /*OP_NOT2*/ fap_ref['hairs' ]
                        modelname /*OP_NOT2*/ begins_with('Model2Teacherseven')
                        _model = Globals /*OP_NOT2*/ duos_model2[modelname ]
                        ^= each  in  items
                        var d = items[each ]
                        var img = d[1 ]
                        var fname = d[0 ]
                        (debug
                        _model /*OP_NOT2*/ begins_with(fname) (_model /*OP_NOT2*/ begins_with('2' (fname)
                        hairs /*OP_NOT2*/ add_icon_item(img)
                        |
                        hairs /*OP_NOT2*/ add_icon_item(img)
                        _model /*OP_NOT2*/ begins_with('Model2')
                        _model = modelname /*OP_NOT2*/ replace('Model2' ('')
                        hairs /*OP_NOT2*/ select(0)
                        selected_hair = hairs /*OP_NOT2*/ get_selected_items()[0 ]
                        var boobies = Globals /*OP_NOT2*/ fap_ref['boobs' ]
                        var idx = 0
                        ^= each  in  boobies
                        var d = boobies[each ]
                        var img = d[1 ]
                        var fname = d[0 ]
                        var fname_full = fname
                        (fname /*OP_NOT2*/ begins_with('s_d')
                        fname = fname /*OP_NOT2*/ replace('_d' ('') /*OP_NOT2*/ replace('s_' ('')
                        |
                        fname = fname /*OP_NOT2*/ replace('s_' ('') /*OP_NOT2*/ replace('_d' ('')
                        modelname /*OP_NOT2*/ begins_with('Model2')
                        fname_full /*OP_NOT2*/ begins_with('typethree')
                        fname = fname /*OP_NOT2*/ replace('typethree_' ('')
                        var tname = fname /*OP_NOT2*/ capitalize() /*OP_NOT2*/ replace(' ' ('')
                        var smodel = modelname /*OP_NOT2*/ replace('Model2' ('')
                        _model /*OP_NOT2*/ begins_with(tname) (smodel /*OP_NOT2*/ begins_with(tname) (fname_full /*OP_NOT2*/ begins_with('typethree_naked')
                        boobs /*OP_NOT2*/ add_icon_item(img)
                        &= modelname /*OP_NOT2*/ begins_with('Model')
                        (fname_full /*OP_NOT2*/ begins_with('typethree')
                        modelname /*OP_NOT2*/ begins_with('ModelTeacherseven') ((fname_full /*OP_NOT2*/ begins_with('s_teacherseven'))
                        boobs /*OP_NOT2*/ add_icon_item(img)
                        &= modelname /*OP_NOT2*/ begins_with('ModelInstructor') ((fname /*OP_NOT2*/ begins_with('naked_giant') (fname_full /*OP_NOT2*/ begins_with('s_instructor'))
                        boobs /*OP_NOT2*/ add_icon_item(img)
                        &= _model /*OP_NOT2*/ begins_with(fname /*OP_NOT2*/ capitalize() /*OP_NOT2*/ replace(' ' ('')) (fname /*OP_NOT2*/ begins_with('naked_') ((modelname /*OP_NOT2*/ begins_with('ModelInstructor') ((modelname /*OP_NOT2*/ begins_with('ModelTeacherseven')
                        boobs /*OP_NOT2*/ add_icon_item(img)
                        var targetname = fname /*OP_NOT2*/ capitalize() /*OP_NOT2*/ replace(' ' ('')
                        var targetmodel = _model
                        targetmodel[targetmodel /*OP_NOT2*/ length() (1 ] = ''
                        (_model /*OP_NOT2*/ begins_with(targetname) (targetmodel[targetname) (boobs /*OP_NOT2*/ get_item_count() (1 while  boobs /*OP_NOT2*/ move_item(idx(0) idx += 1 boobs /*OP_NOT2*/ select(0) selected_boob = boobs /*OP_NOT2*/ get_selected_items()[0 ]
                        active_price = get_item_price_by_image(models('models' (selected_model)
                        active_item = get_item_by_image(models('models' (selected_model)
                        price_button /*OP_NOT2*/ text = self. active_price)
                        show_model()
func _on_Show_pressed():
                          anim /*OP_NOT2*/ play_backwards('intro')
                          show_model()
                          lockerpopup /*OP_NOT2*/ modulate = parent('FFFFFF')
                          lockerpopup /*OP_NOT2*/ load_volumes(Globals /*OP_NOT2*/ sfx_moans_percentage)
                          showing = true
func _on_Update_pressed():
                            show_model()
func _on_MainMenu_pressed():
                              BackgroundLoad /*OP_NOT2*/ load_scene(Globals /*OP_NOT2*/ path_menuscene)
func _on_TentaMouth_pressed():
                                (tentamouth
                                tentamouth = true
                                |
                                tentamouth = false
func _on_Timer_timeout():
                                  lockerpopup /*OP_NOT2*/ model_active
                                  autoplay
                                  lockerpopup /*OP_NOT2*/ _on_Next_pressed()
func _on_AutoPlay_pressed():
                                    autoplay = (autoplay
func _on_Music_pressed():
                                      $ BGMusic
                                      Memories /*OP_NOT2*/ playing
                                      $ BGMusic
                                      Memories /*OP_NOT2*/ stop()
                                      |
                                      $ BGMusic
                                      Memories /*OP_NOT2*/ play()
func _on_ShowPanel_pressed():
                                        anim /*OP_NOT2*/ play('intro')
                                        lockerpopup /*OP_NOT2*/ load_volumes((80)
                                        lockerpopup /*OP_NOT2*/ play_tentacle_sounds(false)
                                        showing = false
func _on_Randomize_pressed():
                                          Globals /*OP_NOT2*/ patreon_exclusive[false while  notify('[center]UNLOCK ON PATREON!!!') % unlocked_model_indices = [ ]
                                          var unlocked_boob_indices = [ ]
                                          var unlocked_hair_indices = [ ]
                                          models /*OP_NOT2*/ get_item_count() (0
                                          ^= i  in  models /*OP_NOT2*/ get_item_count()
                                          var fname = models /*OP_NOT2*/ get_item_icon(i)
                                          var tname = null
                                          ^= each  in  Globals /*OP_NOT2*/ fap_ref['models' ]
                                          each = Globals /*OP_NOT2*/ fap_ref['models' ][each ]
                                          each[1 ][fname while  tname = each[0 ]
                                          tname
func is_purchased():
                                            unlocked_model_indices /*OP_NOT2*/ append(i)
                                            boobs /*OP_NOT2*/ get_item_count() (0
                                            ^= i  in  boobs /*OP_NOT2*/ get_item_count()
                                            var fname = boobs /*OP_NOT2*/ get_item_icon(i)
                                            var tname = null
                                            ^= each  in  Globals /*OP_NOT2*/ fap_ref['boobs' ]
                                            each = Globals /*OP_NOT2*/ fap_ref['boobs' ][each ]
                                            each[1 ][fname while  tname = each[0 ]
                                            tname
func is_purchased():
                                              unlocked_boob_indices /*OP_NOT2*/ append(i)
                                              hairs /*OP_NOT2*/ get_item_count() (0
                                              ^= i  in  hairs /*OP_NOT2*/ get_item_count()
                                              var fname = hairs /*OP_NOT2*/ get_item_icon(i)
                                              var tname = null
                                              ^= each  in  Globals /*OP_NOT2*/ fap_ref['hairs' ]
                                              each = Globals /*OP_NOT2*/ fap_ref['hairs' ][each ]
                                              each[1 ][fname while  tname = each[0 ]
                                              tname
func is_purchased():
                                                unlocked_hair_indices /*OP_NOT2*/ append(i)
                                                unlocked_model_indices /*OP_NOT2*/ size() (0
                                                _on_Models_item_selected(unlocked_model_indices[self.) if  unlocked_model_indices /*OP_NOT2*/ size() ])
                                                unlocked_hair_indices /*OP_NOT2*/ size() (0
                                                _on_Hairs_item_selected(unlocked_hair_indices[self.) if  unlocked_hair_indices /*OP_NOT2*/ size() ])
                                                unlocked_boob_indices /*OP_NOT2*/ size() (0
                                                _on_Boobs_item_selected(unlocked_boob_indices[self.) if  unlocked_boob_indices /*OP_NOT2*/ size() ])
                                                unlocked_boob_indices /*OP_NOT2*/ size() (0 (unlocked_hair_indices /*OP_NOT2*/ size() (0 (unlocked_model_indices /*OP_NOT2*/ size() (0
                                                showing
                                                show_model()
                                                |
                                                _on_Show_pressed()
func _on_FaceType1_toggled():
                                                  button_pressed
                                                  lockerpopup /*OP_NOT2*/ face_idx = 0
                                                  $ Faces
                                                  FaceType2 /*OP_NOT2*/ pressed = false
                                                  $ Faces
                                                  FaceType3 /*OP_NOT2*/ pressed = false
func _on_FaceType2_toggled():
                                                    button_pressed
                                                    lockerpopup /*OP_NOT2*/ face_idx = 1
                                                    $ Faces
                                                    FaceType1 /*OP_NOT2*/ pressed = false
                                                    $ Faces
                                                    FaceType3 /*OP_NOT2*/ pressed = false
func _on_FaceType3_toggled():
                                                      button_pressed
                                                      lockerpopup /*OP_NOT2*/ face_idx = 2
                                                      $ Faces
                                                      FaceType1 /*OP_NOT2*/ pressed = false
                                                      $ Faces
                                                      FaceType2 /*OP_NOT2*/ pressed = false
