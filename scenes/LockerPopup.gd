# Decompiled from assets/scenes/LockerPopup.gdc
# Godot GDC v13 | 155 ids, 88 consts, 2782 tokens

extends Node2D
/*OP_SHIFT_RIGHT_INT*/ (parent) FAP_MODE
> active_locker_progress
> locker_view
var showing = false
var speed_value = 0
var max_speed_value = 400
var threshold_speed_min = 20
var speed_dropping = false
var max_speed_drop_counts = 1
var speed_drop_counts = 0
var climax_threshold = 385
var default_next_button_texture = self. 'res://assets/cyril_assets/UI/Pointer.png')
var cum_next_button_texture = self. 'res://assets/cyril_assets/UI/Pointer_Cum.png')
var climaxed = false
var climaxing = false
var climax_once = false
var zoom = false
var main_scene = null
var active_locker = null
var naked = false
var model_active = null
/ model_manager = $ ModelManager
/ ramp = $ Ramp
Speed
/ sound = $ AudioLockerScenes
/ tentaclefuck = $ AudioLockerScenes
Tentafuck
/ moan_climax = $ AudioLockerScenes
Climax
var femaletwo_name = null
var moans = [ ]
var active_moan = null
var animator1 = null
var animator_tentacle1 = null
var animator_tentacle1_vagene = null
var animator_tentacle2 = null
var animator_vagene = null
var animator_eyes = null
var animator_mouth = null
var hair_color = 'yellow'
var body_type = 'Girl'
var pre = ''
var __override = null
var scene_mode = 'default'
var face_idx = 0
var info = - *
var level = 0
func _ready():
  self.)
  load_volumes()
func load_volumes():
    ^= each  in  $ AudioLockerScenes /*OP_NOT2*/ get_children()
    each /*OP_NOT2*/ name.. 'Tentafuck'
    sfmoan
    each /*OP_NOT2*/ volume_db = sfmoan
    |
    each /*OP_NOT2*/ volume_db = Globals /*OP_NOT2*/ sfx_moans_percentage
    sfmoan
    $ AudioLockerScenes
    Tentafuck /*OP_NOT2*/ volume_db = sfmoan
    |
    $ AudioLockerScenes
    Tentafuck /*OP_NOT2*/ volume_db = Globals /*OP_NOT2*/ sfx_percentage
func initialize():
      (_body = body_type(_override = - *)
      __override = null
      model_manager /*OP_NOT2*/ naked = naked
      model_manager /*OP_NOT2*/ scene_mode = scene_mode
      level = 0
      _on_SoundSync_timeout()
      $ SoundSync /*OP_NOT2*/ start()
      FAP_MODE
      speed_value = 0
      FAP_MODE(_override
      __override = _override
      ramp /*OP_NOT2*/ max_value = max_speed_value
      climax_once = false
      ^= each  in  sound /*OP_NOT2*/ get_children()
      each /*OP_NOT2*/ name /*OP_NOT2*/ begins_with('Moan')
      moans /*OP_NOT2*/ append(each)
      model_manager /*OP_NOT2*/ femaletwo_name = femaletwo_name
      model_active = model_manager /*OP_NOT2*/ show_random_girl(_hair_color(_body(_override)
      model_manager /*OP_NOT2*/ current_id
      (info /*OP_NOT2*/ has(model_manager /*OP_NOT2*/ current_id)
      info[model_manager /*OP_NOT2*/ current_id ] = face_idx
      |
      face_idx = info[model_manager /*OP_NOT2*/ current_id ]
      face_idx(3
      face_idx += 1
      info[model_manager /*OP_NOT2*/ current_id ] = face_idx
      hair_color = model_manager /*OP_NOT2*/ hair_color
      model_active[null while  % ^= each  in  Globals /*OP_NOT2*/ eye_colors while  Globals /*OP_NOT2*/ eye_colors[each]/*OP_NOT2*/ has(hair_color /*OP_NOT2*/ to_lower())
      pre = each('_'
      -
      model_active.. null
      var rboobs = model_active /*OP_NOT2*/ get_node('_ATTIRE_TENTACLE') /*OP_NOT2*/ animation
      var rmodel = model_active
      active_locker
      active_locker /*OP_NOT2*/ boob_name = rboobs
      model_active /*OP_NOT2*/ name['Female' while  animator1 = model_active /*OP_NOT2*/ get_parent() /*OP_NOT2*/ get_node('Anim') animator_tentacle1 = model_active /*OP_NOT2*/ get_parent() /*OP_NOT2*/ get_node('TentacleVagina1') | while  animator1 = model_active /*OP_NOT2*/ get_node('Anim') model_active /*OP_NOT2*/ has_node('TentacleVagina1') while  animator_tentacle1 = model_active /*OP_NOT2*/ get_node('TentacleVagina1') &= model_active /*OP_NOT2*/ has_node('Tentacle2') while  animator_tentacle1 = model_active /*OP_NOT2*/ get_node('Tentacle2') &= model_active /*OP_NOT2*/ has_node('DefaultVagina1') while  animator_vagene = model_active /*OP_NOT2*/ get_node('DefaultVagina1') animator_tentacle1 while  animator_tentacle1 /*OP_NOT2*/ play('default') animator_tentacle1 /*OP_NOT2*/ has_method('hide_cum') while  animator_tentacle1 /*OP_NOT2*/ hide_cum() animator_tentacle1 /*OP_NOT2*/ has_node('Cum/Anim') while  animator_tentacle1 /*OP_NOT2*/ get_node('Cum/Anim') /*OP_NOT2*/ play('RESET') animator_tentacle1 /*OP_NOT2*/ has_node('VageneAnim') while  animator_tentacle1_vagene = animator_tentacle1 /*OP_NOT2*/ get_node('VageneAnim') animator_vagene while  animator_vagene /*OP_NOT2*/ get_node('Cum/Anim') /*OP_NOT2*/ play('RESET') animator_eyes = model_active /*OP_NOT2*/ get_node('Head/Eyes') animator_mouth = model_active /*OP_NOT2*/ get_node('Head/Mouth') model_active /*OP_NOT2*/ get_node('Head/Eyes/Blush1') /*OP_NOT2*/ hide() speed_balancer() rboobs /*OP_NOT2*/ begins_with('naked') (rboobs /*OP_NOT2*/ ends_with('naked') while  model_manager /*OP_NOT2*/ show_attire(false(rmodel(rboobs) | while  model_manager /*OP_NOT2*/ show_attire(true(rmodel(rboobs) | while  self. 'ERROR! Model: NULL') >> speed_balancer(ui = true) while  speed_value = self. speed_value(0 (max_speed_value) model_active[null while  % $ Ramp /*OP_NOT2*/ show() valid_scene_modes =['default' ('smart' ('quick']valid_scene_modes /*OP_NOT2*/ has(scene_mode) while  speed_value(300 while  face_idx[0 while  animator_mouth /*OP_NOT2*/ play('horror') animator_eyes /*OP_NOT2*/ play('hardclose') &= face_idx[2 while  animator_mouth /*OP_NOT2*/ play('tongue') animator_eyes /*OP_NOT2*/ play(pre('ecstatic') | while  animator_mouth /*OP_NOT2*/ play('zigzag') animator_eyes /*OP_NOT2*/ play(pre('peak2') $ UI Next /*OP_NOT2*/ texture_normal = cum_next_button_texture animators_adjuster([ 2.2 (2.2 (1.25 ]) active_moan = moans[3]level = 5 &= speed_value(230 while  face_idx[0 while  animator_mouth /*OP_NOT2*/ play('horror') animator_eyes /*OP_NOT2*/ play(pre('horror') &= face_idx[2 while  animator_mouth /*OP_NOT2*/ play('surprised') animator_eyes /*OP_NOT2*/ play(pre('ecstatic') | while  animator_mouth /*OP_NOT2*/ play('climax1') speed_value(265 while  animator_eyes /*OP_NOT2*/ play('softclosed') | while  animator_eyes /*OP_NOT2*/ play(pre('peak1') animators_adjuster([ 1.7 (1.7 (1.05 ]) active_moan = moans[4]level = 4 &= speed_value(160 ((climaxing while  model_active /*OP_NOT2*/ get_node('Head/Eyes/Blush1') /*OP_NOT2*/ show() face_idx[0 while  animator_mouth /*OP_NOT2*/ play('hardclose') animator_eyes /*OP_NOT2*/ play('hardclose') &= face_idx[2 while  animator_mouth /*OP_NOT2*/ play('one') animator_eyes /*OP_NOT2*/ play('softclosed') | while  animator_mouth /*OP_NOT2*/ play('climax0') animator_eyes /*OP_NOT2*/ play(pre('peak1') animators_adjuster([ 1.5 (1.5 (0.85 ]) active_moan = moans[2]level = 3 &= speed_value(80 ((climaxing while  face_idx[0 while  animator_mouth /*OP_NOT2*/ play('surprised') animator_eyes /*OP_NOT2*/ play(pre('surprised') &= face_idx[2 while  animator_mouth /*OP_NOT2*/ play('one') animator_eyes /*OP_NOT2*/ play(pre('one') | while  animator_mouth /*OP_NOT2*/ play('default') animators_adjuster([ 1.3 (1.3 (0.65 ]) active_moan = moans[1]level = 2 | while(climaxed while  face_idx[0 while  animator_mouth /*OP_NOT2*/ play('default2') animator_eyes /*OP_NOT2*/ play(pre('horror') &= face_idx[2 while  animator_mouth /*OP_NOT2*/ play('climax0') animator_eyes /*OP_NOT2*/ play(pre('peak1') | while  animator_mouth /*OP_NOT2*/ play('default2') animator_eyes /*OP_NOT2*/ play(pre('default') | while  face_idx[0 while  animator_mouth /*OP_NOT2*/ play('default2') animator_eyes /*OP_NOT2*/ play('hardclose') &= face_idx[2 while  animator_mouth /*OP_NOT2*/ play('ecstatic') animator_eyes /*OP_NOT2*/ play(pre('ecstatic') | while  animator_mouth /*OP_NOT2*/ play('one') animator_eyes /*OP_NOT2*/ play(pre('default') speed_value(5 while  animators_adjuster() | while  animators_adjuster([ 0.8 (0.9 (0.3 ]) active_moan = moans[0]level = 1 speed_value(climax_threshold((climaxed while  climaxed = true climaxing = true animator_tentacle1 while  animator_tentacle1 /*OP_NOT2*/ frames /*OP_NOT2*/ has_animation('cumming') while  animator_tentacle1 /*OP_NOT2*/ play('cumming') | while(animator_tentacle1 /*OP_NOT2*/ has_method('start_cum') while  animator_tentacle1 /*OP_NOT2*/ frames /*OP_NOT2*/ has_animation('cummed') while  animator_tentacle1 /*OP_NOT2*/ play('cummed') (climax_once while  climax_once = true model_active /*OP_NOT2*/ has_node('Tentacle2Cum') while  model_active /*OP_NOT2*/ get_node('Tentacle2Cum') /*OP_NOT2*/ play('cum') &= animator_vagene while  animator_vagene /*OP_NOT2*/ get_node('Cum/Anim') /*OP_NOT2*/ play('cum') &= animator_tentacle1 /*OP_NOT2*/ has_method('start_cum') while  animator_tentacle1 /*OP_NOT2*/ start_cum() model_active /*OP_NOT2*/ has_node('Type3Cum') while  model_active /*OP_NOT2*/ get_node('Type3Cum') /*OP_NOT2*/ play('cum') $ Orgasm /*OP_NOT2*/ start() $ UI Next /*OP_NOT2*/ hide() active_moan while  active_moan /*OP_NOT2*/ stop() moan_climax /*OP_NOT2*/ play() | while  $ UI Next /*OP_NOT2*/ show() ui while  ramp /*OP_NOT2*/ value = speed_value &= scene_mode['passive' while  animator_eyes /*OP_NOT2*/ play('softclosed') animators_adjuster([ 1.5 (1.5 (0.85 ]) active_moan = moans[5]animator_mouth /*OP_NOT2*/ play('default') animator_tentacle1 /*OP_NOT2*/ frames /*OP_NOT2*/ has_animation('cummed') while  animator_tentacle1 /*OP_NOT2*/ play('cummed') model_active /*OP_NOT2*/ get_node('Head/Eyes/Blush1') /*OP_NOT2*/ show() animator_tentacle1 /*OP_NOT2*/ has_method('squirt') while  animator_tentacle1 /*OP_NOT2*/ squirt() $ UI Next /*OP_NOT2*/ hide() $ Ramp /*OP_NOT2*/ hide() ^= _moan  in  moans while  _moan.. active_moan while  _moan /*OP_NOT2*/ stop() active_moan($ Orgasm /*OP_NOT2*/ is_stopped() ((climaxing while(active_moan /*OP_NOT2*/ playing while  active_moan /*OP_NOT2*/ pitch_scale = self. 0.9 (1.1) active_moan /*OP_NOT2*/ play() model_manager /*OP_NOT2*/ sync_animations() $ SpeedValue /*OP_NOT2*/ text = self. speed_value) $ CanvasLayer Debug /*OP_NOT2*/ text = 'Eyes: ' (animator_eyes /*OP_NOT2*/ animation('\nMouth: ' (animator_mouth /*OP_NOT2*/ animation('\nLevel: ' (self. level) ('\nFaceIdx: ' (self. face_idx) >> animators_adjuster(array =[0.8 (0.8 (0.3 ]) while  array /*OP_NOT2*/ size() (0 while  animator1 /*OP_NOT2*/ playback_speed = array[0 ]
      animator_tentacle1
      (animator_tentacle1 /*OP_NOT2*/ is_queued_for_deletion()
      animator_tentacle1 /*OP_NOT2*/ speed_scale = array[1 ]
      animator_tentacle1_vagene
      (animator_tentacle1_vagene /*OP_NOT2*/ is_queued_for_deletion()
      animator_tentacle1_vagene /*OP_NOT2*/ speed_scale = array[1 ]
      tentaclefuck /*OP_NOT2*/ pitch_scale = array[2 ]
      $ SoundSync /*OP_NOT2*/ wait_time = array[0 ]
func locker_reset():
        animator_tentacle1
        (animator_tentacle1 /*OP_NOT2*/ is_queued_for_deletion()
        animator_tentacle1 /*OP_NOT2*/ has_method('hide_cum')
        animator_tentacle1 /*OP_NOT2*/ hide_cum()
        model_active
        model_active /*OP_NOT2*/ has_node('Tentacle2Cum')
        model_active /*OP_NOT2*/ get_node('Tentacle2Cum') /*OP_NOT2*/ play('RESET')
        force
        speed_value = 0
        showing = false
        climaxed = false
        climaxing = false
        climax_once = false
        $ SoundSync /*OP_NOT2*/ stop()
        $ Orgasm /*OP_NOT2*/ stop()
        $ ClimaxTimer /*OP_NOT2*/ stop()
        $ UI
        Next /*OP_NOT2*/ show()
        $ UI
        Next /*OP_NOT2*/ texture_normal = default_next_button_texture
func show_locker():
          is_show((showing
          initialize()
          _on_Next_pressed(0)
          $ AnimationPlayer /*OP_NOT2*/ play('intro')
          showing = true
          $ UI
          Next /*OP_NOT2*/ show()
          $ UI
          Next /*OP_NOT2*/ texture_normal = default_next_button_texture
          $ ClimaxTimer /*OP_NOT2*/ start()
          tentaclefuck /*OP_NOT2*/ play()
          (FAP_MODE
          var _girls = get_tree() /*OP_NOT2*/ get_nodes_in_group('hallway_girls')
          ^= _girl  in  _girls
          _girl /*OP_NOT2*/ silenced = true
          var _lockers = get_tree() /*OP_NOT2*/ get_nodes_in_group('Locker')
          ^= _locker  in  _lockers
          _locker /*OP_NOT2*/ occupied_sound((80)
          |
          $ AnimationPlayer /*OP_NOT2*/ play_backwards('intro')
          active_locker
          active_locker /*OP_NOT2*/ speed_value = speed_value
          locker_reset()
          ^= _moan  in  moans
          _moan /*OP_NOT2*/ stop()
          (FAP_MODE
          tentaclefuck /*OP_NOT2*/ stop()
          var _girls = get_tree() /*OP_NOT2*/ get_nodes_in_group('hallway_girls')
          ^= _girl  in  _girls
          _girl /*OP_NOT2*/ silenced = false
          var _lockers = get_tree() /*OP_NOT2*/ get_nodes_in_group('Locker')
          ^= _locker  in  _lockers
          _locker /*OP_NOT2*/ occupied_sound()
          (FAP_MODE
          emit_signal('locker_view' (showing)
func _on_SoundSync_timeout():
            /
func _on_Next_pressed():
              (animate = true)
              var ui = true
              model_active[null while  % (climaxed while  $ Orgasm /*OP_NOT2*/ is_stopped() while  _i(1 (animate while  $ UI Anim /*OP_NOT2*/ play('button') speed_value += _i | while  speed_value -= (_i(3) (1 | while  speed_value -= (_i(3) (1 ui = false speed_balancer(ui) (FAP_MODE while  emit_signal('active_locker_progress' () >> _input(_event) while  Input /*OP_NOT2*/ is_action_just_pressed('ui_right') (showing while  _on_Next_pressed() >> _on_ClimaxTimer_timeout() while  _on_Next_pressed(2 (false) >> _on_Orgasm_timeout() while  speed_value = 0 (FAP_MODE while  emit_signal('active_locker_progress' () showing while  show_locker(false) model_manager /*OP_NOT2*/ instance_dictionary /*OP_NOT2*/ has(model_manager /*OP_NOT2*/ current_id) while  model_manager /*OP_NOT2*/ instance_dictionary /*OP_NOT2*/ erase(model_manager /*OP_NOT2*/ current_id) model_manager /*OP_NOT2*/ instance_dictionary2 /*OP_NOT2*/ erase(model_manager /*OP_NOT2*/ current_id) active_locker while  active_locker /*OP_NOT2*/ girl_climax() | while  locker_reset() __override while  initialize(null(null(__override) _on_Next_pressed() $ UI Next /*OP_NOT2*/ show() climaxed = false >> _on_Button_pressed() while(zoom while  zoom = true $ Anim /*OP_NOT2*/ play('zoom1') | while  $ Anim /*OP_NOT2*/ play_backwards('zoom1') zoom = false >> play_tentacle_sounds(play = false) while  play while  tentaclefuck /*OP_NOT2*/ play() | while  tentaclefuck /*OP_NOT2*/ stop() >> update_modelmanager_id(_id) while  model_manager /*OP_NOT2*/ update_id(_id) >> _on_Close_pressed() while  show_locker(false)
