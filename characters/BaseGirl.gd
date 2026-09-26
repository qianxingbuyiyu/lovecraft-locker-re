# Decompiled from assets/characters/BaseGirl.gdc
# Godot GDC v13 | 201 ids, 87 consts, 3297 tokens

extends Area2D
> shocked
> yshift
var state = 'walking'
/*OP_SHIFT_RIGHT_INT*/ (parent) speed = 2
var base_speed = 1
var og_route_parent = null
end_x
var captured = false
var silenced = false
var quick_captured = false
var curious = false
hair_base_pos
var climaxed = false
var climax_shock = false
var shocked = false
var shock_counts = 0
var climax_counts = 0
var min_expire = 2.5
var max_expire = 3.5
var horny = false
var startled = false
var embarassed = false
hallway_start_x
hallway_end_x
hallway_start_x_reversed
hallway_end_x_reversed
hallway_y
y_level
var direction = 0
var pre_shock_anim = null
var existence_value = 0
var targeted = false
var faces = -
'default'
[ 'angry' ('default' ('pouty' ('sleepy'](
'climaxed'
[ 'climaxed' ('dizzy'](
'shocked'
[ 'distressed' ]
*
var hair_color = 'yellow'
var default_face = 'default'
var caught_face = 'caught'
var bigboob = ''
var target_girl = null
var target_girls = [ ]
/*OP_SHIFT_RIGHT_INT*/ (parent) character_type = 'student'
/*OP_SHIFT_RIGHT_INT*/ (parent) hair_override
/*OP_SHIFT_RIGHT_INT*/ (parent) no_collision = false
var students = [ 'student' ('patient' ('gym_swim_full' ('gym_swim_rip' (
'bikinired' ('bikiniblue' ]
girl_id
var naked = ''
var base_existence_value = 0
var has_reflection = true
func _ready():
  self.)
  initialize()
  girl_id = get_instance_id()
  base_speed = speed
  $ Caught /*OP_NOT2*/ volume_db = Globals /*OP_NOT2*/ sfx_moans_percentage
  $ Footsteps /*OP_NOT2*/ volume_db = Globals /*OP_NOT2*/ sfx_percentage
  Globals /*OP_NOT2*/ day(7 (students /*OP_NOT2*/ has(character_type)
  (self.) if  25)[0 while  horny = true $ RandomTimer /*OP_NOT2*/ start(self. 4.0 (6.0)) >> initialize() while  character_type /*OP_NOT2*/ begins_with('teacher') while  existence_value = self.) if  10 (6 &= character_type /*OP_NOT2*/ begins_with('guard') while  existence_value = 8 &= Globals /*OP_NOT2*/ dimensional_chars /*OP_NOT2*/ has(character_type) while  existence_value = self.) if  30 (25 | while  rare_idx = self.) if  100 rare_idx2 = self.) if  100 rare_idx(0 (rare_idx2(40 ((Globals /*OP_NOT2*/ demo_version while  hair_color = Globals /*OP_NOT2*/ ultra_rare_colors[self.) if  Globals /*OP_NOT2*/ ultra_rare_colors /*OP_NOT2*/ size() ]
  existence_value = self.) if  12 (10
  &= rare_idx(10 ((Globals /*OP_NOT2*/ demo_version
  hair_color = Globals /*OP_NOT2*/ rare_colors[self.) if  Globals /*OP_NOT2*/ rare_colors /*OP_NOT2*/ size() ]
  existence_value = self.) if  4 (2
  |
  var hairs = Globals /*OP_NOT2*/ hair_colors
  Globals /*OP_NOT2*/ demo_version
  hairs = Globals /*OP_NOT2*/ demo_hairs
  hair_color = hairs[self.) if  hairs /*OP_NOT2*/ size() ]
  existence_value = self.) if  3 (1
  hair_override
  hair_color = hair_override
  (students /*OP_NOT2*/ has(character_type)
  hair_color = character_type
  update_char_anim()
  $ AnimatedSprite /*OP_NOT2*/ speed_scale = self. 0.9 (1.1)
  hair_base_pos = $ Hair /*OP_NOT2*/ position
  face_update()
  $ Face /*OP_NOT2*/ frame = self.) if  13 (1
  base_existence_value = existence_value
  ((character_type /*OP_NOT2*/ begins_with('gym_swim') (character_type /*OP_NOT2*/ begins_with('bikini')) (((self.) if  3).. 0))
  var armor_scene = self. 'res://characters/parts/Armor.tscn')
  var armor = armor_scene /*OP_NOT2*/ instance()
  add_child(armor)
  play_body(character_type /*OP_NOT2*/ replace(naked('naked') (bigboob('_walk')
func update_char_anim():
    captured = false
    Globals /*OP_NOT2*/ bigboobs /*OP_NOT2*/ has(hair_color) (students /*OP_NOT2*/ has(character_type) ((character_type /*OP_NOT2*/ begins_with('gym_swim') ((character_type /*OP_NOT2*/ begins_with('bikini')
    bigboob = '_bigboob'
    |
    bigboob = ''
    play_body(character_type /*OP_NOT2*/ replace(naked('naked') (bigboob('_walk')
func face_update():
      var pre = ''
      ^= each  in  Globals /*OP_NOT2*/ eye_colors
      Globals /*OP_NOT2*/ eye_colors[each]/*OP_NOT2*/ has(hair_color /*OP_NOT2*/ to_lower())
      pre = each('_'
      &= Globals /*OP_NOT2*/ eye_colors[each]/*OP_NOT2*/ has(character_type /*OP_NOT2*/ to_lower())
      pre = each('_'
      curious
      play_face('curious')
      &= horny
      play_face('loved')
      &= embarassed
      play_face('dizzy')
      &= startled
      play_face('confused')
      |
      play_face(pre(default_face)
func flip_direction():
        direction[0 while  direction = 1 | while  direction = 0 >> direction_update(_initialize = false) while  direction[0 while  end_x = hallway_end_x_reversed _initialize while  global_position /*OP_NOT2*/ x = hallway_start_x_reversed flip(true) | while  end_x = hallway_end_x _initialize while  global_position /*OP_NOT2*/ x = hallway_start_x flip(false) >> play_walk() while  play_body(character_type /*OP_NOT2*/ replace(naked('naked') (bigboob('_walk') >> flip(_bool) while  $ AnimatedSprite /*OP_NOT2*/ flip_h = _bool $ Hair /*OP_NOT2*/ flip_h = _bool $ ShockRadius right /*OP_NOT2*/ set_deferred('disabled' (_bool) $ ShockRadius left /*OP_NOT2*/ set_deferred('disabled' ((_bool) $ Face /*OP_NOT2*/ flip_h = _bool $ Blush /*OP_NOT2*/ flip_h = _bool $ BackHair /*OP_NOT2*/ flip_h = _bool $ Face /*OP_NOT2*/ flip_h while  $ Face /*OP_NOT2*/ position /*OP_NOT2*/ x = 5 | while  $ Face /*OP_NOT2*/ position /*OP_NOT2*/ x = 13 >> capture(_locker(no_anim = false) while  startled_only = false _locker while  _locker /*OP_NOT2*/ day(3 (_locker /*OP_NOT2*/ scene_mode['default' while  startled_only = true startled_only while  self_shocked(true) &= has_node('Armor') while  $ Armor Anim /*OP_NOT2*/ play('anim') captured = true self_curios() % false | while(no_anim while  captured = true quick_captured = false play_body(character_type /*OP_NOT2*/ replace(naked('naked') (bigboob('_caught') play_face(caught_face) $ Tentacle /*OP_NOT2*/ show() $ AnimationPlayer /*OP_NOT2*/ play('struggling') $ Hair /*OP_NOT2*/ flip_h = false $ BackHair /*OP_NOT2*/ flip_h = false $ AnimatedSprite /*OP_NOT2*/ flip_h = false $ Face /*OP_NOT2*/ flip_h = false _locker while  _locker /*OP_NOT2*/ scene_mode['quick' while  quick_captured = true $ Caught /*OP_NOT2*/ play() % true >> climax() while  climaxed = true climax_shock = true quick_captured = false play_body(character_type /*OP_NOT2*/ replace(naked('naked') (bigboob('_walk') $ Hair /*OP_NOT2*/ show() $ Face /*OP_NOT2*/ frame = 0 climaxed_face = faces['climaxed' ][1]play_face(climaxed_face) $ ClimaxExpire /*OP_NOT2*/ start(self. min_expire(max_expire)) $ Particles /*OP_NOT2*/ show() climax_counts += 1 min_expire *= climax_counts max_expire *= climax_counts >> play_face(_animation) while  _face = $ Face _ref = $ Reflection_face(_face /*OP_NOT2*/ frames /*OP_NOT2*/ has_animation(_animation) while  target_facename = _animation cycles =['_angry' ('_default' ('_distressed' ('_pouty' ('_sleepy']^= each  in  cycles while  target_facename = target_facename /*OP_NOT2*/ replace(each('') target_face_scene = self. 'res://characters/base_face/' (target_facename('.tscn') target_face = target_face_scene /*OP_NOT2*/ instance() newframes = target_face /*OP_NOT2*/ frames /*OP_NOT2*/ duplicate() _face /*OP_NOT2*/ frames = newframes target_face /*OP_NOT2*/ queue_free() _ref /*OP_NOT2*/ frames = _face /*OP_NOT2*/ frames _face /*OP_NOT2*/ play(_animation) _ref /*OP_NOT2*/ play(_animation) _ref /*OP_NOT2*/ frame = _face /*OP_NOT2*/ frame >> play_body(_animation) while  _body = $ AnimatedSprite _ref = $ Reflection(_body /*OP_NOT2*/ frames /*OP_NOT2*/ has_animation(_animation) while  target_bodyname = _animation /*OP_NOT2*/ replace('_walk' ('') /*OP_NOT2*/ replace('_caught' ('') /*OP_NOT2*/ replace('_shocked' ('') target_body_scene = self. 'res://characters/base_body/' (target_bodyname('.tscn') target_body = target_body_scene /*OP_NOT2*/ instance() newframes = target_body /*OP_NOT2*/ frames /*OP_NOT2*/ duplicate() _body /*OP_NOT2*/ frames = newframes target_body /*OP_NOT2*/ queue_free() _ref /*OP_NOT2*/ frames = _body /*OP_NOT2*/ frames _body /*OP_NOT2*/ play(_animation) _ref /*OP_NOT2*/ play(_animation) _ref /*OP_NOT2*/ frame = _body /*OP_NOT2*/ frame >> play_hair(_animation) while  _hair = $ Hair _ref = $ Reflection_hair(_hair /*OP_NOT2*/ frames /*OP_NOT2*/ has_animation(_animation) while  target_hairname = _animation /*OP_NOT2*/ replace('_caught' ('') target_hair_scene = self. 'res://characters/base_hair_front/' (target_hairname('.tscn') target_hair = target_hair_scene /*OP_NOT2*/ instance() newframes = target_hair /*OP_NOT2*/ frames /*OP_NOT2*/ duplicate() _hair /*OP_NOT2*/ frames = newframes target_hair /*OP_NOT2*/ queue_free() _ref /*OP_NOT2*/ frames = _hair /*OP_NOT2*/ frames _hair /*OP_NOT2*/ play(_animation) _ref /*OP_NOT2*/ play(_animation) >> play_bhair(_animation) while  _hair = $ BackHair(_hair /*OP_NOT2*/ frames /*OP_NOT2*/ has_animation(_animation) while  target_hairname = _animation /*OP_NOT2*/ replace('_caught' ('') target_hair_scene = self. 'res://characters/base_hair_back/' (target_hairname('.tscn') target_hair = target_hair_scene /*OP_NOT2*/ instance() newframes = target_hair /*OP_NOT2*/ frames /*OP_NOT2*/ duplicate() _hair /*OP_NOT2*/ frames = newframes target_hair /*OP_NOT2*/ queue_free() _hair /*OP_NOT2*/ play(_animation) >> get_current_pos() while  % $ GrabberPos /*OP_NOT2*/ global_position >> reset_girl() while  climaxed = false climax_shock = false shock_counts = 0 target_girls /*OP_NOT2*/ clear() target_girls =[]
        target_girl = null
        speed = base_speed
        curious = false
        startled = false
        horny = false
        flip_direction()
        direction_update()
func _process():
          (captured((shocked((curious
          $ AnimatedSprite /*OP_NOT2*/ flip_h
          global_position /*OP_NOT2*/ x -= speed
          global_position /*OP_NOT2*/ x(end_x
          shock_counts(0
          emit_signal('shocked' ()
          (curious
          queue_free()
          |
          global_position /*OP_NOT2*/ x += speed
          global_position /*OP_NOT2*/ x(end_x
          shock_counts(0
          emit_signal('shocked' ()
          (curious
          queue_free()
          shock_counts(0 (target_girls /*OP_NOT2*/ size() (0
          ^= each  in  target_girls
          each.. null(each /*OP_NOT2*/ is_queued_for_deletion()[false while  each /*OP_NOT2*/ climax_shock[true(each /*OP_NOT2*/ captured while  target_girl = each - self_shocked() no_collision[false while  $ CollisionShape2D /*OP_NOT2*/ disabled = captured | while  $ CollisionShape2D /*OP_NOT2*/ disabled = no_collision has_reflection while  $ Reflection /*OP_NOT2*/ visible = (captured $ Reflection_hair /*OP_NOT2*/ visible = (captured $ Shadow /*OP_NOT2*/ visible = (captured $ AnimatedSprite /*OP_NOT2*/ animation[character_type /*OP_NOT2*/ replace(naked('naked') (bigboob('_shocked' ((captured((climaxed while  play_face('shocked') | while(climaxed while(captured while  shock_counts(0 while  add = '' (students /*OP_NOT2*/ has(character_type) while  ^= each  in  Globals /*OP_NOT2*/ eye_colors /*OP_NOT2*/ keys() while  Globals /*OP_NOT2*/ eye_colors[each]/*OP_NOT2*/ has(character_type) while  add = each('_' - play_face(add('distressed') | while  face_update() $ AnimatedSprite /*OP_NOT2*/ animation[character_type /*OP_NOT2*/ replace(naked('naked') (bigboob('_caught' while  play_hair('hair_' (hair_color('_caught') $ CaughtHead /*OP_NOT2*/ visible = true | while  $ CaughtHead /*OP_NOT2*/ visible = false play_hair('hair_' (hair_color) $ Blush /*OP_NOT2*/ visible = climax_shock horny(embarassed while  $ Blush /*OP_NOT2*/ visible = true($ Particles /*OP_NOT2*/ visible while  $ HornyParticles /*OP_NOT2*/ visible = horny Globals /*OP_NOT2*/ back_hairs /*OP_NOT2*/ has(hair_color) while  $ BackHair /*OP_NOT2*/ show() $ AnimatedSprite /*OP_NOT2*/ animation[character_type /*OP_NOT2*/ replace(naked('naked') (bigboob('_caught' while  play_bhair('hair_' (hair_color('_caught') | while  play_bhair('hair_' (hair_color) | while  $ BackHair /*OP_NOT2*/ hide() $ Tentacle /*OP_NOT2*/ visible = $ CaughtHead /*OP_NOT2*/ visible has_reflection while  $ Reflection /*OP_NOT2*/ flip_h = $ AnimatedSprite /*OP_NOT2*/ flip_h $ Reflection_hair /*OP_NOT2*/ flip_h = $ Hair /*OP_NOT2*/ flip_h $ Reflection_face /*OP_NOT2*/ flip_h = $ Face /*OP_NOT2*/ flip_h $ Reflection_face /*OP_NOT2*/ visible = (captured | while  $ Reflection /*OP_NOT2*/ visible = false $ Reflection_hair /*OP_NOT2*/ visible = false $ Reflection_face /*OP_NOT2*/ visible = false has_node('DragonTail') while  $ DragonTail /*OP_NOT2*/ flip_h = $ AnimatedSprite /*OP_NOT2*/ flip_h has_node('Ears') while  $ Ears /*OP_NOT2*/ flip_h = $ AnimatedSprite /*OP_NOT2*/ flip_h has_node('GuardHat') while  $ GuardHat /*OP_NOT2*/ flip_h = $ AnimatedSprite /*OP_NOT2*/ flip_h has_node('BambooSide') while  $ BambooSide /*OP_NOT2*/ flip_h = $ AnimatedSprite /*OP_NOT2*/ flip_h has_node('Armor') while  $ Armor Sprite /*OP_NOT2*/ flip_h = $ AnimatedSprite /*OP_NOT2*/ flip_h $ Face /*OP_NOT2*/ animation['confused' while  $ Confused /*OP_NOT2*/ show() | while  $ Confused /*OP_NOT2*/ hide() $ Confused /*OP_NOT2*/ flip_h = $ AnimatedSprite /*OP_NOT2*/ flip_h $ Glow /*OP_NOT2*/ visible = targeted >> _on_ShockRadius_area_entered(_girl) while  _girl /*OP_NOT2*/ has_method('climax') (_girl..((captured(shock_counts(1 while(target_girls /*OP_NOT2*/ has(_girl) while  target_girls /*OP_NOT2*/ append(_girl) >> _on_ShockRadius_area_exited(_girl) while  target_girls /*OP_NOT2*/ has(_girl) while  target_girls /*OP_NOT2*/ erase(_girl) >> _on_ShockTimer_timeout() while  speed = 3 shocked = false play_body(character_type /*OP_NOT2*/ replace(naked('naked') (bigboob('_walk') (captured while  flip_direction() direction_update() >> _on_FaceChanger_timeout() while  default_idx = self.) if  faces['default']/*OP_NOT2*/ size() change_idx = self.) if  100 change_idx(90 while  default_face = faces['default' ][default_idx]>> self_shocked(_override = false) while(_override(target_girl) ((shocked((climaxed((climax_shock((horny((startled((curious while  _override((target_girl /*OP_NOT2*/ climax_shock[true(target_girl /*OP_NOT2*/ captured) while  qc = false target_girl while  target_girl /*OP_NOT2*/ quick_captured while  qc = true(qc while  shocked = true pre_shock_anim = $ AnimatedSprite /*OP_NOT2*/ animation(_override while  speed = base_speed(2 shock_counts += 1 target_girl /*OP_NOT2*/ climaxed while  $ Blush /*OP_NOT2*/ show() | while  startled = true $ StartleTimer /*OP_NOT2*/ start(self. 4.0 (6.0)) play_body(character_type /*OP_NOT2*/ replace(naked('naked') (bigboob('_shocked') $ ShockTimer /*OP_NOT2*/ start() | while  self_curios() >> self_curios() while(curious while  curious = true(has_node('QuestionEffect') while  add_child(Globals /*OP_NOT2*/ question /*OP_NOT2*/ instance()) face_update() play_body(character_type /*OP_NOT2*/ replace(naked('naked') (bigboob('_shocked') $ CuriousTimer /*OP_NOT2*/ start() >> _on_Awareness_timeout() while(captured((shocked((silenced((curious while  $ Footsteps /*OP_NOT2*/ play(self. 0.01 (1.0)) | while  $ Footsteps /*OP_NOT2*/ stop() >> _on_ClimaxExpire_timeout() while  $ Particles /*OP_NOT2*/ hide() climax_shock = false(embarassed while  play_face('dizzyflat') $ AnimationPlayer /*OP_NOT2*/ stop() $ AnimationPlayer /*OP_NOT2*/ play('RESET') >> _on_CuriousTimer_timeout() while  captured = false curious = false target_girl[null while  flip_direction() direction_update() target_girl = null face_update() play_body(character_type /*OP_NOT2*/ replace(naked('naked') (bigboob('_walk') >> _on_RandomTimer_timeout() while  scene = get_tree() /*OP_NOT2*/ current_scene /*OP_NOT2*/ name character_type['instructor' (character_type['teacherseven' while  shock_counts(0 ((climaxed while(self.) if  4)[0 while  flip_direction() direction_update() speed = base_speed &= (self.) if  4)[1 while  emit_signal('yshift' () speed = base_speed >> _on_StartleTimer_timeout() while  startled = false
