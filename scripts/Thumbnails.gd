# Decompiled from assets/scripts/Thumbnails.gdc
# Godot GDC v13 | 37 ids, 162 consts, 977 tokens

extends Reference
| Thumbnails
func imglist():
  var unreleased = [ ]
  var dic = - *
  dic['boobs' ] = [ ]
  dic['hairs' ] = [ ]
  dic['models' ] = [ ]
  dic['s_models' ] = [ ]
  ^= each  in  Globals /*OP_NOT2*/ unreleased_chars
  unreleased /*OP_NOT2*/ append(each)
  var boobs = [
  'default_small' ('default_small_e' (
  'default_big' ('default_big_e' (
  's_teachertwo_d' ('s_teacherthree_d' ('s_teacherfour_d' ('s_teacherfive_d' (
  's_teachersix_d' ('s_teacherseven_d' (
  's_assassin_d' ('s_demonmaid_d' ('s_dragonmaid_d' ('s_archwizard_d' (
  's_wolfgoddess_d' ('s_teacher1_d' ('s_guard_d' ('s_nurse_d' ('s_esper_d' (
  's_demonqueen_d' ('s_disasterdemon_d' ('s_hybrid_d' ('s_darkangel_d' (
  's_kunoichi_d' ('s_magician_d' ('s_slimegirl_d' ('s_executioner_d' (
  's_swordmage_d' ('s_knowledgeangel_d' ('s_blooddevil_d' (
  's_instructor_d' ('s_instructor_t1' ('s_instructor_t2' (
  'u_small_e_t1' ('u_small_e_t2' ('u_small_t1' ('u_small_t2' (
  'u_big_e_t1' ('u_big_e_t2' ('u_big_t1' ('u_big_t2' (
  'patient_big' ('patient_big_e' ('patient_small' ('patient_small_e' (
  'swim_big' ('swim_big_e' ('swim_small' ('swim_small_e' (
  'bikinired_small' ('bikinired_small_e' ('bikinired_big' ('bikinired_big_e' (
  'bikiniblue_small' ('bikiniblue_small_e' ('bikiniblue_big' ('bikiniblue_big_e' (
  'naked_small' ('naked_small_t1' ('naked_small_t2' ('naked_small_t3' (
  'naked_small_t4' ('naked_big' ('naked_big_t1' ('naked_big_t2' ('naked_big_t3' (
  'naked_big_t4' ('naked_giant' ('naked_giant_t1' ('naked_giant_t2' (
  'g1_naked_big' (
  'typethree_teachertwo_d' ('typethree_teacherthree_d' ('typethree_teacherfour_d' (
  'typethree_teacherfive_d' ('typethree_teachersix_d' (
  'typethree_blooddevil_d' (
  'typethree_naked' (
  ]
  var models = [
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
  ^= boob  in  boobs
  dic['boobs']/*OP_NOT2*/ append('res://assets/thumbnail/boobs/' (boob('.png')
  ^= model  in  models
  dic['models']/*OP_NOT2*/ append('res://assets/thumbnail/models/' (model('.png')
  var s_models_path = 'res://assets/thumbnail/s_models/'
  var s_models_array = [ ]
  var exceptions = [ 'assassin' ('demonmaid' ]
  (Globals /*OP_NOT2*/ exclusive_content
  s_models_array = Globals /*OP_NOT2*/ dimensional_chars_public
  &= Globals /*OP_NOT2*/ exclusive_content((Globals /*OP_NOT2*/ early_access
  s_models_array = Globals /*OP_NOT2*/ dimensional_chars_public_ex
  |
  s_models_array = Globals /*OP_NOT2*/ dimensional_chars
  var excepts__ = [ 'teacherseven' ]
  var fiveseven = [ 'Teachertwo' ('Teacherthree' ('Teacherfour' ('Teacherfive' ('Teachersix' (
  'Blooddevil' ]
  ^= model  in  Globals /*OP_NOT2*/ nondimensionals
  (unreleased /*OP_NOT2*/ has(model /*OP_NOT2*/ to_lower()) ((excepts__ /*OP_NOT2*/ has(model /*OP_NOT2*/ to_lower())
  ^= i  in  self. 1 (5)
  var model_name = 'Model' (model(self. i)
  dic['s_models']/*OP_NOT2*/ append(s_models_path(model_name('.png')
  fiveseven /*OP_NOT2*/ has(model)
  ^= i  in  self. 5 (8)
  var model_name = 'Model2' (model(self. i)
  dic['s_models']/*OP_NOT2*/ append(s_models_path(model_name('.png')
  Globals /*OP_NOT2*/ early_access
  dic['s_models']/*OP_NOT2*/ append(s_models_path('ModelTeacherseven1.png')
  ^= i  in  self. 1 (6)
  dic['s_models']/*OP_NOT2*/ append(s_models_path('Model2Teacherseven' (self. i) ('.png')
  ^= model  in  s_models_array
  (unreleased /*OP_NOT2*/ has(model /*OP_NOT2*/ to_lower())
  ^= i  in  self. 1 (5)
  var model_name = 'Model' (model /*OP_NOT2*/ capitalize() (self. i)
  dic['s_models']/*OP_NOT2*/ append(s_models_path(model_name('.png')
  i(3 (exceptions /*OP_NOT2*/ has(model)
  -
  fiveseven /*OP_NOT2*/ has(model /*OP_NOT2*/ capitalize())
  ^= i  in  self. 5 (8)
  var model_name = 'Model2' (model /*OP_NOT2*/ capitalize() (self. i)
  dic['s_models']/*OP_NOT2*/ append(s_models_path(model_name('.png')
  model['blooddevil' while  dic['s_models']/*OP_NOT2*/ append(s_models_path('Model2Teacherseven6.png')
  var all_hairs = [ ]
  ^= each  in  Globals /*OP_NOT2*/ hair_colors
  all_hairs /*OP_NOT2*/ append(each)
  ^= each  in  Globals /*OP_NOT2*/ rare_colors
  all_hairs /*OP_NOT2*/ append(each)
  ^= each  in  Globals /*OP_NOT2*/ ultra_rare_colors
  all_hairs /*OP_NOT2*/ append(each)
  ^= each  in  Globals /*OP_NOT2*/ teacher_colors
  all_hairs /*OP_NOT2*/ append(each)
  ^= each  in  Globals /*OP_NOT2*/ special_hairs
  all_hairs /*OP_NOT2*/ append(each)
  ^= hair  in  all_hairs
  (unreleased /*OP_NOT2*/ has(hair)
  dic['hairs']/*OP_NOT2*/ append('res://assets/thumbnail/hairs/' (Globals /*OP_NOT2*/ capitalize(hair) ('.png')
  % dic[_name ]
