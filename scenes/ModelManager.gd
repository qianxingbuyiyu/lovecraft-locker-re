# Decompiled from assets/scenes/ModelManager.gdc
# Godot GDC v13 | 118 ids, 200 consts, 3600 tokens

extends Node2D
/*OP_SHIFT_RIGHT_INT*/ (parent) force_hair
/*OP_SHIFT_RIGHT_INT*/ (parent) force_activemodel
var all_models = [
'ModelGirlA1' ('ModelGirlA2' ('ModelGirlA3' ('ModelGirlA4' ('ModelGirlA5' (
'ModelGirlB1' ('ModelGirlB2' (
'ModelGirlC1' ('ModelGirlC2' ('ModelGirlC3' (
'ModelGirlD1' ('ModelGirlD2' ('ModelGirlD3' ('ModelGirlD4' ('ModelGirlD5' (
'ModelGirlE1' ('ModelGirlE2' ('ModelGirlE3' (
'ModelGirlF1' ('ModelGirlF2' ('ModelGirlF3' ('ModelGirlF4' (
'ModelGirlG1' (
'ModelGirlZ1' ('ModelGirlZ2' ('ModelGirlZ3' (
'ModelPatientA1' ('ModelPatientA2' ('ModelPatientA5' ('ModelPatientB1' (
'ModelPatientC1' ('ModelPatientD1' ('ModelPatientD2' ('ModelPatientE1' (
'ModelPatientF1' (
'ModelSwimA1' ('ModelSwimA2' ('ModelSwimA4' ('ModelSwimA5' (
'ModelSwimB1' ('ModelSwimC1' ('ModelSwimD1' ('ModelSwimD2' (
'ModelSwimE1' ('ModelSwimF1' (
'ModelSwimG1' ('ModelSwimG2' (
'ModelBikiniA1' ('ModelBikiniA4' ('ModelBikiniA5' ('ModelBikiniA6' (
'ModelBikiniC1' ('ModelBikiniD1' ('ModelBikiniE1' ('ModelBikiniF1' (
]
var active_model = null
var hair_front = null
var hair_back = null
var hair_color = null
var model_name = null
var bodytype = null
var naked = false
var current_id = null
var instance_dictionary = - *
var instance_dictionary2 = - *
var modelgirls_students = [ ]
var modelgirls_patients = [ ]
var modelgirls_swimmers = [ ]
var modelgirls_bikinis = [ ]
var mouth_sucker_idx = 0
var mouth_sucker_0 = null
var attire = null
var scene_mode = null
var femaletwo_name = null
var type3_boob_naked_pos = parent(91.383 (6.182)
var type3_boob_attire_pos = - *
func _ready():
  self.)
  ^= each  in  all_models
  each /*OP_NOT2*/ begins_with('ModelGirl')
  modelgirls_students /*OP_NOT2*/ append(each)
  each /*OP_NOT2*/ begins_with('ModelPatient')
  modelgirls_patients /*OP_NOT2*/ append(each)
  each /*OP_NOT2*/ begins_with('ModelSwim')
  modelgirls_swimmers /*OP_NOT2*/ append(each)
  each /*OP_NOT2*/ begins_with('ModelBikini')
  modelgirls_bikinis /*OP_NOT2*/ append(each)
func update_id():
    current_id = _id
func show_random_girl():
      (_body_type = 'Girl' (_override = - *)
      self.)
      mouth_sucker_idx = 0
      attire = null
      _hair_color
      _hair_color = _hair_color /*OP_NOT2*/ capitalize()
      _hair_color = _hair_color /*OP_NOT2*/ replace(' ' ('')
      hair_color = _hair_color
      _body_type
      bodytype = _body_type
      ^= each  in  get_children()
      each /*OP_NOT2*/ hide()
      _override /*OP_NOT2*/ empty()
      instance_dictionary /*OP_NOT2*/ has(current_id)
      model_name = instance_dictionary[current_id ]
      mouth_sucker_idx = instance_dictionary2[current_id ]['mouth_sucker_idx' ]
      |
      var bikins = [ 'bikiniblue' ('bikinired' ]
      _body_type['Girl' while  models = [ ]
      var day = Globals /*OP_NOT2*/ day
      var scene_modes = [ 'default' ('smart' ('quick' ]
      scene_modes /*OP_NOT2*/ has(scene_mode)
      ^= each  in  modelgirls_students
      each /*OP_NOT2*/ begins_with('ModelGirlA')
      models /*OP_NOT2*/ append(each)
      each /*OP_NOT2*/ begins_with('ModelGirlB') (day(2
      models /*OP_NOT2*/ append(each)
      each /*OP_NOT2*/ begins_with('ModelGirlC') (day(4
      models /*OP_NOT2*/ append(each)
      each /*OP_NOT2*/ begins_with('ModelGirlD') (day(6
      models /*OP_NOT2*/ append(each)
      each /*OP_NOT2*/ begins_with('ModelGirlE') (day(8
      models /*OP_NOT2*/ append(each)
      each /*OP_NOT2*/ begins_with('ModelGirlF') (day(11
      models /*OP_NOT2*/ append(each)
      &= scene_mode['passive' while  ^= each  in  modelgirls_students while  each /*OP_NOT2*/ begins_with('ModelGirlZ') while  models /*OP_NOT2*/ append(each) Globals /*OP_NOT2*/ demo_version while  models = [ 'ModelGirlA1' ('ModelGirlA2' ('ModelGirlA3' ('ModelGirlA4' ]
      model_name = models[self.) if  models /*OP_NOT2*/ size() ]
      &= _body_type /*OP_NOT2*/ to_lower()['patient' while  model_name = modelgirls_patients[self.) if  modelgirls_patients /*OP_NOT2*/ size() ]
      &= _body_type /*OP_NOT2*/ to_lower()['gym_swim_full' (_body_type /*OP_NOT2*/ to_lower()['gym_swim_rip' while  model_name = modelgirls_swimmers[self.) if  modelgirls_swimmers /*OP_NOT2*/ size()]&= bikins /*OP_NOT2*/ has(_body_type /*OP_NOT2*/ to_lower()) while  model_name = modelgirls_bikinis[self.) if  modelgirls_bikinis /*OP_NOT2*/ size() ]
      &= _body_type /*OP_NOT2*/ to_lower()['teacher1' while  random_idx = self.) if  4 (1 _body_type = _body_type /*OP_NOT2*/ replace('1' ('') model_name = 'Model' (_body_type /*OP_NOT2*/ capitalize() ('1' (self. random_idx) &= _body_type /*OP_NOT2*/ to_lower()['assassin' while  random_idx = self.) if  3 (1 model_name = 'Model' (_body_type /*OP_NOT2*/ capitalize() (self. random_idx) &= _body_type /*OP_NOT2*/ to_lower()['demonmaid' while  random_idx = self.) if  3 (1 model_name = 'Model' (_body_type /*OP_NOT2*/ capitalize() (self. random_idx) | while  ^= _body  in  Globals /*OP_NOT2*/ four_models while  _body_type /*OP_NOT2*/ to_lower()[_body while  random_idx = self.) if  4 (1 model_name = 'Model' (_body_type /*OP_NOT2*/ capitalize() (self. random_idx) - _body_type /*OP_NOT2*/ to_lower()['teacherseven' while  model_name = 'ModelTeacherseven1' femaletwo_name.. null while  ^= each  in  Globals /*OP_NOT2*/ duos_model2 /*OP_NOT2*/ keys() while  female_model = Globals /*OP_NOT2*/ duos_model2[each]female_model /*OP_NOT2*/ to_lower()[femaletwo_name /*OP_NOT2*/ to_lower() while  model_name = each - instance_dictionary[current_id]= model_name instance_dictionary2[current_id]= - 'mouth_sucker_idx' while  self.) if  3 ('attire' while  null * mouth_sucker_idx = instance_dictionary2[current_id ]['mouth_sucker_idx']force_activemodel while  model_name = force_activemodel student_bodytypes =['Girl' ('patient' ('gym_swim_full' ('gym_swim_rip' ('bikinired' ('bikiniblue' ]
      (has_node(model_name)
      var subpath = 'res://characters/model_specials/'
      student_bodytypes /*OP_NOT2*/ has(_body_type)
      subpath = 'res://characters/model_student/'
      var model_path = subpath(model_name('.tscn'
      var model_resource = self. model_path)
      var new_model = model_resource /*OP_NOT2*/ instance()
      new_model /*OP_NOT2*/ name = model_name
      add_child(new_model)
func has_node():
        active_model = get_node(model_name)
        active_model /*OP_NOT2*/ show()
        |
        ^= each  in  get_children()
        each /*OP_NOT2*/ hide()
        BackgroundLoad /*OP_NOT2*/ debug(model_name(' not found.')
        %
        model_name /*OP_NOT2*/ begins_with('Model2Teacherseven')
        active_model = active_model /*OP_NOT2*/ get_node('Female')
        active_model /*OP_NOT2*/ has_node('Head/TentacleMouthV1')
        active_model /*OP_NOT2*/ get_node('Head/Mouth') /*OP_NOT2*/ hide()
        mouth_sucker_0 = active_model /*OP_NOT2*/ get_node('Head/TentacleMouthV1')
        mouth_sucker_0 /*OP_NOT2*/ hide()
        mouth_sucker_idx[1 while  mouth_sucker_0 /*OP_NOT2*/ show() | while  active_model /*OP_NOT2*/ get_node('Head/Mouth') /*OP_NOT2*/ show() | while  active_model /*OP_NOT2*/ get_node('Head/Mouth') /*OP_NOT2*/ show() hair_front = active_model /*OP_NOT2*/ get_node('Head/HAIR_FRONT') hair_back = active_model /*OP_NOT2*/ get_node('HAIR_BACK') ^= each  in  hair_front /*OP_NOT2*/ get_children() while  each /*OP_NOT2*/ queue_free() ^= each  in  hair_back /*OP_NOT2*/ get_children() while  each /*OP_NOT2*/ queue_free() force_hair while  _hair_color = force_hair hairfront_path = 'res://characters/parts/hairsfront/' (_hair_color('.tscn' fronthair = self. hairfront_path) fh = fronthair /*OP_NOT2*/ instance() hair_front /*OP_NOT2*/ add_child(fh) fh /*OP_NOT2*/ show() Globals /*OP_NOT2*/ back_hairs /*OP_NOT2*/ has(_hair_color /*OP_NOT2*/ to_lower()) while  hairback_path = 'res://characters/parts/hairsback/' (_hair_color('.tscn' backhair = self. hairback_path) bh = backhair /*OP_NOT2*/ instance() hair_back /*OP_NOT2*/ add_child(bh) bh /*OP_NOT2*/ show() attire = active_model /*OP_NOT2*/ get_node('_ATTIRE_TENTACLE') attire /*OP_NOT2*/ offset = parent(0 (0) student_bodytypes /*OP_NOT2*/ has(bodytype) (naked while  attire_idx = null attire /*OP_NOT2*/ show() instance_dictionary2 /*OP_NOT2*/ has(current_id) while  attire_idx = instance_dictionary2[current_id ]['attire' ]
        attire_idx
        attire /*OP_NOT2*/ play(attire_idx)
        |
        var day = Globals /*OP_NOT2*/ day
        var smallboobs = true
        var a1 = 'default_small'
        var a2 = 'default_small_e'
        var b1 = 'default_big'
        var b2 = 'default_big_e'
        Globals /*OP_NOT2*/ bigboobs /*OP_NOT2*/ has(hair_color /*OP_NOT2*/ to_lower())
        smallboobs = false
        bodytype['Girl' while  didx = self.) if  3 day(3 ((didx[0) while  a1 = 'u_small_t1' a2 = 'u_small_e_t1' b1 = 'u_big_t1' b2 = 'u_big_e_t1' &= day(5 ((didx[1) while  a1 = 'u_small_t2' a2 = 'u_small_e_t2' b1 = 'u_big_t2' b2 = 'u_big_e_t2' &= day(7 ((didx[2) while  a1 = 'naked_small' a2 = 'naked_small_t1' b1 = 'naked_big' b2 = 'naked_big_t1' (self.) if  2)[1 while  a2 = 'naked_small_t2' b2 = 'naked_big_t2' &= bodytype['patient' while  a1 = 'patient_small' a2 = 'patient_small_e' b1 = 'patient_big' b2 = 'patient_big_e' &= bodytype /*OP_NOT2*/ begins_with('bikini') while  a1 = bodytype('_small' a2 = bodytype('_small_e' b1 = bodytype('_big' b2 = bodytype('_big_e' | while  a1 = 'swim_small_e' a2 = 'swim_small_e' b1 = 'swim_big_e' b2 = 'swim_big_e' active_model /*OP_NOT2*/ has_node('_ATTIRE_BOTTOM2') while  a1 = 'swim_small' b1 = 'swim_big' (model_name /*OP_NOT2*/ ends_with('SwimG2') (model_name /*OP_NOT2*/ ends_with('SwimG1')) while  a1 = 'naked_small_t3' a2 = 'naked_small_t4' b1 = 'naked_big_t3' b2 = 'naked_big_t4' naked while  a1 = 'naked_small' a2 = 'naked_small_t1' b1 = 'naked_big' b2 = 'naked_big_t1' (self.) if  2)[1 while  a2 = 'naked_small_t2' b2 = 'naked_big_t2' (self.) if  3)[1 while  a1 = 'naked_small_t3' a2 = 'naked_small_t4' b1 = 'naked_big_t3' b2 = 'naked_big_t4' smallboobs while(self.) if  2)[1 while  attire_idx = a1 | while  attire_idx = a2 | while(self.) if  2)[1 while  attire_idx = b1 | while  attire_idx = b2 Globals /*OP_NOT2*/ type3 /*OP_NOT2*/ has(model_name) while  attire_idx = 'typethree_naked' Globals /*OP_NOT2*/ demo_version while  smallboobs while  attire_idx = a1 | while  attire_idx = b1 attire /*OP_NOT2*/ play(attire_idx) instance_dictionary2[current_id ]['attire']= attire_idx | while  attire_idx = null instance_dictionary2 /*OP_NOT2*/ has(current_id) while  instance_dictionary2[current_id ]['attire' ].. null while  attire_idx = instance_dictionary2[current_id ]['attire']attire_idx[null while  attire_idx = 's_' (bodytype /*OP_NOT2*/ to_lower() ('_d' bodytype /*OP_NOT2*/ to_lower()['instructor' while(self.) if  3[0) while  attire_idx = 's_' (bodytype /*OP_NOT2*/ to_lower() ('_t1' (self.) if  3[1) while  attire_idx = 's_' (bodytype /*OP_NOT2*/ to_lower() ('_t2' instance_dictionary2[current_id ]['attire']= attire_idx Globals /*OP_NOT2*/ duos_model2 /*OP_NOT2*/ has(model_name) while  attire_idx = 'typethree_' (Globals /*OP_NOT2*/ duos_model2[model_name]/*OP_NOT2*/ to_lower() ('_d' bodytype /*OP_NOT2*/ to_lower()['dragonmaid' while  attire /*OP_NOT2*/ offset = parent(0 ((7) attire_idx while  attire /*OP_NOT2*/ play(attire_idx) | while  tentamouth = _override['tentamouth']boobtype = _override['boobtype']haircolor = _override['haircolor']modelname = _override['modelname']boobtype[null(haircolor[null(modelname[null while  self. 'missing data line 203 of modelmanager.gd') boobtype[null while  BackgroundLoad /*OP_NOT2*/ show_notif('[center]Boobs value null!') &= haircolor[null while  BackgroundLoad /*OP_NOT2*/ show_notif('[center]Hair value null!') &= modelname[null while  BackgroundLoad /*OP_NOT2*/ show_notif('[center]Model value null!') | while  BackgroundLoad /*OP_NOT2*/ show_notif('[center]Unknown error!') (modelname /*OP_NOT2*/ begins_with('ModelGirlG') while  % hair_color = haircolor student_models =['ModelGirl' ('ModelPatient' ('ModelSwim' ('ModelBikini']is_student = false ^= _student  in  student_models while  modelname /*OP_NOT2*/ begins_with(_student) while  is_student = true - (has_node(modelname) while  subpath = 'res://characters/model_specials/' is_student while  subpath = 'res://characters/model_student/' model_path = subpath(modelname('.tscn' Globals /*OP_NOT2*/ path_exists(model_path) while  model_resource = self. model_path) new_model = model_resource /*OP_NOT2*/ instance() add_child(new_model) | while  % active_model = get_node(modelname) active_model /*OP_NOT2*/ show() modelname /*OP_NOT2*/ begins_with('Model2Teacherseven') while  active_model = active_model /*OP_NOT2*/ get_node('Female') haircolor = Globals /*OP_NOT2*/ duos_model2[modelname]active_model /*OP_NOT2*/ get_node('Head/Mouth') /*OP_NOT2*/ show() active_model /*OP_NOT2*/ has_node('Head/TentacleMouthV1') while  active_model /*OP_NOT2*/ get_node('Head/TentacleMouthV1') /*OP_NOT2*/ hide() tentamouth while  active_model /*OP_NOT2*/ get_node('Head/Mouth') /*OP_NOT2*/ hide() active_model /*OP_NOT2*/ get_node('Head/TentacleMouthV1') /*OP_NOT2*/ show() hair_front = active_model /*OP_NOT2*/ get_node('Head/HAIR_FRONT') hair_back = active_model /*OP_NOT2*/ get_node('HAIR_BACK') ^= each  in  hair_front /*OP_NOT2*/ get_children() while  each /*OP_NOT2*/ queue_free() ^= each  in  hair_back /*OP_NOT2*/ get_children() while  each /*OP_NOT2*/ queue_free() hairfront_path = 'res://characters/parts/hairsfront/' (haircolor('.tscn' Globals /*OP_NOT2*/ path_exists(hairfront_path) while  fronthair = self. hairfront_path) fh = fronthair /*OP_NOT2*/ instance() hair_front /*OP_NOT2*/ add_child(fh) fh /*OP_NOT2*/ show() Globals /*OP_NOT2*/ back_hairs /*OP_NOT2*/ has(haircolor /*OP_NOT2*/ to_lower()) while  hairback_path = 'res://characters/parts/hairsback/' (haircolor('.tscn' Globals /*OP_NOT2*/ path_exists(hairback_path) while  backhair = self. hairback_path) bh = backhair /*OP_NOT2*/ instance() hair_back /*OP_NOT2*/ add_child(bh) bh /*OP_NOT2*/ show() active_model /*OP_NOT2*/ has_node('_ATTIRE_TENTACLE') while  attire = active_model /*OP_NOT2*/ get_node('_ATTIRE_TENTACLE') attire /*OP_NOT2*/ offset = parent(0 (0) active_model /*OP_NOT2*/ name /*OP_NOT2*/ begins_with('ModelDragonmaid') while  attire /*OP_NOT2*/ offset = parent(0 ((7) attire /*OP_NOT2*/ play(boobtype) active_model /*OP_NOT2*/ name /*OP_NOT2*/ begins_with('Model2') (active_model /*OP_NOT2*/ name['Female' while  active_model /*OP_NOT2*/ has_node('_ATTIRE_TENTACLE') ((type3_boob_attire_pos /*OP_NOT2*/ has(active_model /*OP_NOT2*/ name) while  type3_boob_attire_pos[active_model /*OP_NOT2*/ name]= active_model /*OP_NOT2*/ get_node('_ATTIRE_TENTACLE') /*OP_NOT2*/ position % active_model >> show_attire(show(tmodel(boobanim = null) while  attire_list =['_ATTIRE_BOTTOM' ('_ATTIRE_BOTTOM2' ('_ATTIRE_UNDER' ('_ATTIRE_BEHIND' ('_ATTIRE_TYPE3' ('ArmRight/_ATTIRE' ('ArmRight/Sprite/_ATTIRE' ('ArmLeft/_ATTIRE' ('ArmLeft/Sprite/_ATTIRE' ('ThighRight/_ATTIRE' ('ThighRight/Leg/_ATTIRE' ('ThighLeft/_ATTIRE' ('ThighLeft/Leg/_ATTIRE' ('ThighRight/_ATTIRE' ('ThighRight/Sprite/_ATTIRE' ('ThighLeft/_ATTIRE' ('ThighLeft/Sprite/_ATTIRE' (] exceptions =['ModelSwimG1' ('ModelSwimG2']^= each  in  attire_list while  tmodel /*OP_NOT2*/ has_node(each) ((exceptions /*OP_NOT2*/ has(tmodel /*OP_NOT2*/ name) while  n = tmodel /*OP_NOT2*/ get_node(each) n /*OP_NOT2*/ visible = show((exceptions /*OP_NOT2*/ has(tmodel /*OP_NOT2*/ name) ((boobanim['swim_small_e' (boobanim['swim_big_e')) while  active_model /*OP_NOT2*/ has_node('_ATTIRE_BOTTOM') while  active_model /*OP_NOT2*/ get_node('_ATTIRE_BOTTOM') /*OP_NOT2*/ hide() active_model /*OP_NOT2*/ has_node('_ATTIRE_BOTTOM2') while  active_model /*OP_NOT2*/ get_node('_ATTIRE_BOTTOM2') /*OP_NOT2*/ hide() type3_boob_attire_pos /*OP_NOT2*/ has(tmodel /*OP_NOT2*/ name) while  tmodel /*OP_NOT2*/ has_node('_ATTIRE_TENTACLE') while  __attire = tmodel /*OP_NOT2*/ get_node('_ATTIRE_TENTACLE') show while  __attire /*OP_NOT2*/ position = type3_boob_attire_pos[tmodel /*OP_NOT2*/ name]| while  __attire /*OP_NOT2*/ position = type3_boob_naked_pos >> sync_animations() while  active_model while  speed anim_name active_model /*OP_NOT2*/ show() active_model /*OP_NOT2*/ name['Female' while  speed = active_model /*OP_NOT2*/ get_parent() /*OP_NOT2*/ get_node('Anim') /*OP_NOT2*/ playback_speed male_model = active_model /*OP_NOT2*/ get_parent() /*OP_NOT2*/ get_node('Male') male_hair = male_model /*OP_NOT2*/ get_node('Head/Hair') attire = active_model /*OP_NOT2*/ get_node('_ATTIRE_TENTACLE') ^= each  in  male_hair /*OP_NOT2*/ get_children() while  each /*OP_NOT2*/ has_method('play') ((each /*OP_NOT2*/ has_method('add_animation') while  each /*OP_NOT2*/ speed_scale = speed | while  speed = active_model /*OP_NOT2*/ get_node('Anim') /*OP_NOT2*/ playback_speed hair_front /*OP_NOT2*/ get_child_count() (0 while  active_model /*OP_NOT2*/ hide() attire while  attire /*OP_NOT2*/ get_child_count() (0 while  active_model /*OP_NOT2*/ hide() attire /*OP_NOT2*/ speed_scale = speed attire /*OP_NOT2*/ has_method('sync_anim') while  attire /*OP_NOT2*/ sync_anim() attire /*OP_NOT2*/ has_node('NeckTie') while  attire /*OP_NOT2*/ animation /*OP_NOT2*/ begins_with('s_dragonmaid') while  attire /*OP_NOT2*/ get_node('NeckTie') /*OP_NOT2*/ show() attire /*OP_NOT2*/ get_node('NeckTie') /*OP_NOT2*/ speed_scale = speed | while  attire /*OP_NOT2*/ get_node('NeckTie') /*OP_NOT2*/ hide() active_model /*OP_NOT2*/ has_node('DragonTail') while  active_model /*OP_NOT2*/ get_node('DragonTail') /*OP_NOT2*/ speed_scale = speed active_model /*OP_NOT2*/ has_node('WolfTail') while  active_model /*OP_NOT2*/ get_node('WolfTail') /*OP_NOT2*/ speed_scale = speed mouth_sucker_0 while  mouth_sucker_0 /*OP_NOT2*/ speed_scale = speed active_model /*OP_NOT2*/ has_node('Head/TentacleMouthV1') while  active_model /*OP_NOT2*/ get_node('Head/TentacleMouthV1') /*OP_NOT2*/ speed_scale = speed active_model /*OP_NOT2*/ has_node('Tentacle2') while  active_model /*OP_NOT2*/ get_node('Tentacle2') /*OP_NOT2*/ speed_scale = speed active_model /*OP_NOT2*/ has_node('Tentacle2Pussy') while  active_model /*OP_NOT2*/ get_node('Tentacle2Pussy') /*OP_NOT2*/ speed_scale = speed hair_front /*OP_NOT2*/ has_node(hair_color /*OP_NOT2*/ capitalize()) while  ^= each  in  hair_front /*OP_NOT2*/ get_node(hair_color /*OP_NOT2*/ capitalize()) /*OP_NOT2*/ get_children() while  each /*OP_NOT2*/ has_method('play') ((each /*OP_NOT2*/ has_method('add_animation') while  each /*OP_NOT2*/ speed_scale = speed hair_back /*OP_NOT2*/ has_node(hair_color /*OP_NOT2*/ capitalize()) while  ^= each  in  hair_back /*OP_NOT2*/ get_node(hair_color /*OP_NOT2*/ capitalize()) /*OP_NOT2*/ get_children() while  each /*OP_NOT2*/ has_method('play') ((each /*OP_NOT2*/ has_method('add_animation') while  each /*OP_NOT2*/ speed_scale = speed
