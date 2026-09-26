# Decompiled from assets/scenes/SchoolArea.gdc
# Godot GDC v13 | 274 ids, 180 consts, 4802 tokens

extends Node2D
var characters = -
'student'
!= ('res://characters/Student.tscn') (
'teacher1'
!= ('res://characters/Teacher1.tscn') (
'guard'
!= ('res://characters/Guard.tscn') (
'dragonmaid'
!= ('res://characters/DragonMaid.tscn') (
'assassin'
!= ('res://characters/Assassin.tscn') (
'demonmaid'
!= ('res://characters/Demonmaid.tscn') (
'archwizard'
!= ('res://characters/Archwizard.tscn') (
'wolfgoddess'
!= ('res://characters/Wolfgoddess.tscn') (
'nurse'
!= ('res://characters/Nurse.tscn') (
'esper'
!= ('res://characters/Esper.tscn') (
'demonqueen'
!= ('res://characters/Demonqueen.tscn') (
'disasterdemon'
!= ('res://characters/Disasterdemon.tscn') (
'hybrid'
!= ('res://characters/Hybrid.tscn') (
'darkangel'
!= ('res://characters/Darkangel.tscn') (
'instructor'
!= ('res://characters/Instructor.tscn') (
'kunoichi'
!= ('res://characters/Kunoichi.tscn') (
'magician'
!= ('res://characters/Magician.tscn') (
'slimegirl'
!= ('res://characters/Slimegirl.tscn') (
'executioner'
!= ('res://characters/Executioner.tscn') (
'swordmage'
!= ('res://characters/Swordmage.tscn') (
'knowledgeangel'
!= ('res://characters/Knowledgeangel.tscn') (
'blooddevil'
!= ('res://characters/Blooddevil.tscn') (
'teachertwo'
!= ('res://characters/Teachertwo.tscn') (
'teacherthree'
!= ('res://characters/Teacherthree.tscn') (
'teacherfour'
!= ('res://characters/Teacherfour.tscn') (
'teacherfive'
!= ('res://characters/Teacherfive.tscn') (
'teachersix'
!= ('res://characters/Teachersix.tscn') (
'teacherseven'
!= ('res://characters/Teacherseven.tscn') (
*
/ camera = $ HUD
/ controls = $ HUD
WebControls
/ locker_popup = $ HUD
LockerPopup
/*OP_SHIFT_RIGHT_INT*/ (parent) custom_char = 'assassin'
/*OP_SHIFT_RIGHT_INT*/ (parent) has_reflection = true
hallway_start_x
hallway_end_x
hallway_start_x_reversed
hallway_end_x_reversed
hallway_y
var locker_idx = 7
var lockers = null
var active_locker = null
var y_array = [ ]
var y_gap = 45
/*OP_SHIFT_RIGHT_INT*/ (parent) row_size = 6
/*OP_SHIFT_RIGHT_INT*/ (parent) MAX_GIRL_COUNT = 10
/*OP_SHIFT_RIGHT_INT*/ (parent) game_day_end_time = 180
var game_day_curr_time = 0
var total_lust_accumulated = 0
var levels_gained = 0
var current_level = 0
var shock_reduction_time = 60.0
var max_alerts_deduction = 0
var demo_notice_seen = false
func _ready():
  self.)
  ^= each  in  Globals /*OP_NOT2*/ unreleased_chars
  characters /*OP_NOT2*/ erase(each)
  name.. 'Hallway'
  locker_idx = 0
  name['GymPool' while  locker_idx = 19 name['NurseRoom' while  has_node('FrontObjects') while  ^= each  in  $ FrontObjects /*OP_NOT2*/ get_children() while  each /*OP_NOT2*/ name /*OP_NOT2*/ begins_with('Bed') while(self.) if  10)[0 while  each /*OP_NOT2*/ texture = self. 'res://assets/euxi_assets/nurse_room/NR bed 2.png') - name['FacultyRoom' while  has_node('FrontObjects') while  ^= table  in  $ FrontObjects /*OP_NOT2*/ get_children() while  table /*OP_NOT2*/ name /*OP_NOT2*/ begins_with('Table') while(self.) if  2)[0 while  table /*OP_NOT2*/ texture = self. "res://assets/euxi_assets/faculty room/teacher's table.png") (self.) if  10)[0 while(self.) if  30)[0 while  table /*OP_NOT2*/ get_node('Sprite') /*OP_NOT2*/ texture = self. 'res://assets/euxi_assets/faculty room/teacher x student.png') | while  table /*OP_NOT2*/ get_node('Sprite') /*OP_NOT2*/ texture = self. 'res://assets/euxi_assets/faculty room/teacher sleeping.png') ^= i  in  self. 0 (row_size) while  y_array /*OP_NOT2*/ append(i(y_gap) node2d = Node2D /*OP_NOT2*/ new() node2d /*OP_NOT2*/ name = 'CharacterRoute' (self. i(1) $ Routes /*OP_NOT2*/ add_child(node2d) lockers = get_tree() /*OP_NOT2*/ get_nodes_in_group('Locker') Globals /*OP_NOT2*/ load_game() (Globals /*OP_NOT2*/ save_master['game']/*OP_NOT2*/ has('skill_pts') while  Globals /*OP_NOT2*/ save_master['game' ]['skill_pts']= 0 (Globals /*OP_NOT2*/ save_master['game']/*OP_NOT2*/ has('lockers') while  starter_lockers() Globals /*OP_NOT2*/ save_master['game' ]['lockers']= - * save_locker_data() Globals /*OP_NOT2*/ save_game() | while(Globals /*OP_NOT2*/ save_master['game' ]['lockers']/*OP_NOT2*/ has(1301) (name['GymPool' while  starter_lockers() save_locker_data() Globals /*OP_NOT2*/ save_game() &= (Globals /*OP_NOT2*/ save_master['game' ]['lockers']/*OP_NOT2*/ has(1401) (name['FacultyRoom' while  starter_lockers(0 (1) save_locker_data() Globals /*OP_NOT2*/ save_game() load_locker_data() Globals /*OP_NOT2*/ alerts_maximum_og = Globals /*OP_NOT2*/ alerts_maximum $ BGMusic Cozy /*OP_NOT2*/ volume_db = Globals /*OP_NOT2*/ bgmusic_percentage $ BGMusic Cozy /*OP_NOT2*/ play() hallway_start_x = $ HallwayStart /*OP_NOT2*/ global_position /*OP_NOT2*/ x hallway_end_x = $ HallwayEnd /*OP_NOT2*/ global_position /*OP_NOT2*/ x hallway_start_x_reversed = $ HallwayEnd /*OP_NOT2*/ global_position /*OP_NOT2*/ x hallway_end_x_reversed = $ HallwayStart /*OP_NOT2*/ global_position /*OP_NOT2*/ x hallway_y = $ HallwayStart /*OP_NOT2*/ global_position /*OP_NOT2*/ y update_locker(true) starter_girl_count = self.) if  MAX_GIRL_COUNT((MAX_GIRL_COUNT(3) starter_girl_count = parent(self. starter_girl_count(1 (15)) ^= _i  in  self. 0 (starter_girl_count) while  spawn_girl(false(self. hallway_start_x(hallway_start_x_reversed)) locker_popup /*OP_NOT2*/ main_scene = $ Anim /*OP_NOT2*/ play('intro') $ HUD /*OP_NOT2*/ connect('ui_right' (('control_locker_right') $ HUD /*OP_NOT2*/ connect('ui_left' (('control_locker_left') $ HUD /*OP_NOT2*/ connect('locker_pop' (('control_locker_mid') controls /*OP_NOT2*/ connect('clicked_left' (('_on_WebControls_clicked_left') controls /*OP_NOT2*/ connect('clicked_middle' (('_on_WebControls_clicked_middle') controls /*OP_NOT2*/ connect('clicked_right' (('_on_WebControls_clicked_right') controls /*OP_NOT2*/ connect('clicked_special' (('_on_WebControls_clicked_special') $ HUD Panel Balance Anim /*OP_NOT2*/ play('intro') name['Hallway' while  MAX_GIRL_COUNT += (Globals /*OP_NOT2*/ day if  10) MAX_GIRL_COUNT = parent(self. MAX_GIRL_COUNT(1 (30)) ^= i  in  Globals /*OP_NOT2*/ hair_sets /*OP_NOT2*/ keys() while  Globals /*OP_NOT2*/ day(i while  ^= each  in  Globals /*OP_NOT2*/ hair_sets[i]while(Globals /*OP_NOT2*/ hair_colors /*OP_NOT2*/ has(each) while  Globals /*OP_NOT2*/ hair_colors /*OP_NOT2*/ append(each) camera /*OP_NOT2*/ update_day(Globals /*OP_NOT2*/ day) camera /*OP_NOT2*/ show_level('Day ' (self. Globals /*OP_NOT2*/ day)) current_level = Globals /*OP_NOT2*/ game_level(1 camera /*OP_NOT2*/ update_lvl(current_level) update_acc_lust() $ DayTimer /*OP_NOT2*/ start() $ ShockTimer /*OP_NOT2*/ wait_time = shock_reduction_time $ ShockTimer /*OP_NOT2*/ start() update_hud() Globals /*OP_NOT2*/ new_game_pressed while  $ TutorialTimer /*OP_NOT2*/ start(4.2) Globals /*OP_NOT2*/ new_game_pressed = false(has_reflection while  ^= _locker  in  get_tree() /*OP_NOT2*/ get_nodes_in_group('Locker') while  _locker /*OP_NOT2*/ get_node('Reflection') /*OP_NOT2*/ hide() >> _process(_delta) while  $ HUD FPS /*OP_NOT2*/ text = self. Engine /*OP_NOT2*/ get_frames_per_second()) (' fps' Input /*OP_NOT2*/ is_action_just_pressed('ui_cancel') while  BackgroundLoad /*OP_NOT2*/ pause_game(true) Input /*OP_NOT2*/ is_action_just_pressed('ability_show') ((BackgroundLoad /*OP_NOT2*/ debug_visible() while  $ HUD /*OP_NOT2*/ show_ability_panel() Input /*OP_NOT2*/ is_action_just_pressed('custom_char') while  _on_Button_pressed() >> control_locker_mid() while  BackgroundLoad /*OP_NOT2*/ debug_visible() while  % locker_popup /*OP_NOT2*/ naked = false locker_popup /*OP_NOT2*/ showing while  locker_popup /*OP_NOT2*/ get_node('Orgasm') /*OP_NOT2*/ time_left(0 while  locker_popup /*OP_NOT2*/ show_locker(false) $ BGMusic Cozy /*OP_NOT2*/ play() active_locker while  active_locker /*OP_NOT2*/ speed_value = locker_popup /*OP_NOT2*/ speed_value | while  active_locker((get_tree() /*OP_NOT2*/ paused while  active_locker /*OP_NOT2*/ occupant.. null while  active_locker /*OP_NOT2*/ _on_CaptureTimer_timeout() locker_popup /*OP_NOT2*/ hair_color = active_locker /*OP_NOT2*/ occupant /*OP_NOT2*/ hair_color locker_popup /*OP_NOT2*/ body_type = active_locker /*OP_NOT2*/ occupant /*OP_NOT2*/ character_type /*OP_NOT2*/ replace('student' ('Girl') locker_popup /*OP_NOT2*/ scene_mode = active_locker /*OP_NOT2*/ scene_mode locker_popup /*OP_NOT2*/ active_locker = active_locker locker_popup /*OP_NOT2*/ speed_value = active_locker /*OP_NOT2*/ speed_value locker_popup /*OP_NOT2*/ naked = active_locker /*OP_NOT2*/ naked locker_popup /*OP_NOT2*/ update_modelmanager_id(active_locker /*OP_NOT2*/ occupant /*OP_NOT2*/ girl_id) active_locker /*OP_NOT2*/ male_occupant(Globals /*OP_NOT2*/ duo_teachers /*OP_NOT2*/ has(active_locker /*OP_NOT2*/ occupant /*OP_NOT2*/ character_type) while  locker_popup /*OP_NOT2*/ body_type = active_locker /*OP_NOT2*/ male_occupant /*OP_NOT2*/ character_type locker_popup /*OP_NOT2*/ femaletwo_name = active_locker /*OP_NOT2*/ occupant /*OP_NOT2*/ character_type locker_popup /*OP_NOT2*/ show_locker(true) $ BGMusic Cozy /*OP_NOT2*/ stop() >> control_locker_right() while  BackgroundLoad /*OP_NOT2*/ debug_visible() while  % locker_popup /*OP_NOT2*/ showing[false while  locker_idx(lockers /*OP_NOT2*/ size() (1 while  locker_idx += 1 update_locker() | while  locker_popup /*OP_NOT2*/ _on_Next_pressed() >> control_locker_left() while  BackgroundLoad /*OP_NOT2*/ debug_visible() while  % locker_idx(0 while  locker_idx -= 1 update_locker() >> update_locker(quiet = false) while  ^= each  in  lockers while  each /*OP_NOT2*/ activate(false) active_locker = lockers[locker_idx]lockers[locker_idx]/*OP_NOT2*/ activate(true(quiet)
  var initial_pos = camera /*OP_NOT2*/ global_position
  var target_pos = parent(lockers[locker_idx]/*OP_NOT2*/ global_position /*OP_NOT2*/ x(camera /*OP_NOT2*/ global_position /*OP_NOT2*/ y)
  node_tween(camera(initial_pos(target_pos)
  $ HUD /*OP_NOT2*/ check_buyables(active_locker)
  $ HUD /*OP_NOT2*/ apanel_visible
  $ HUD /*OP_NOT2*/ show_ability_panel(false)
func girl_captured():
    (_girl)


var rand_idx = self.) if  $ HUD /*OP_NOT2*/ player_states['abduct']/*OP_NOT2*/ size()
$ HUD /*OP_NOT2*/ update_dialogue('PLAYER' ($ HUD /*OP_NOT2*/ player_states['abduct' ][rand_idx ])
($ HUD
ShowTutorial /*OP_NOT2*/ visible
$ HUD /*OP_NOT2*/ hid_tutorial_panel()
_girl /*OP_NOT2*/ shock_counts(0
_girl /*OP_NOT2*/ shock_counts -= 1
func girl_seized():
  (_girl)
  _locker
  _locker /*OP_NOT2*/ scene_mode['quick' while  vanish = Globals /*OP_NOT2*/ vanish /*OP_NOT2*/ instance() $ Effects /*OP_NOT2*/ add_child(vanish) vanish /*OP_NOT2*/ global_position = _girl /*OP_NOT2*/ global_position >> girl_climaxed(girl(override = false(_locker = null) while(override while  target_pos = parent(0 (0) target_pos /*OP_NOT2*/ x = girl /*OP_NOT2*/ global_position /*OP_NOT2*/ x target_pos /*OP_NOT2*/ y = $ HallwayStart /*OP_NOT2*/ global_position /*OP_NOT2*/ y node_tween(girl(girl /*OP_NOT2*/ global_position(target_pos(1.4) girl /*OP_NOT2*/ captured = false girl /*OP_NOT2*/ visible = true girl /*OP_NOT2*/ flip_direction() girl /*OP_NOT2*/ direction_update() Globals /*OP_NOT2*/ patreon_exclusive(Globals /*OP_NOT2*/ early_access(_locker while  _locker /*OP_NOT2*/ boob_name.. null while  b = _locker /*OP_NOT2*/ boob_name b /*OP_NOT2*/ begins_with('naked_') ((b /*OP_NOT2*/ ends_with('_t3') ((b /*OP_NOT2*/ ends_with('_t4') ((b /*OP_NOT2*/ begins_with('gym_swim_') while  girl /*OP_NOT2*/ naked = girl /*OP_NOT2*/ character_type girl /*OP_NOT2*/ update_char_anim() _locker while  _locker /*OP_NOT2*/ boob_name.. null while  girl /*OP_NOT2*/ character_type['gym_swim_full' (_locker /*OP_NOT2*/ boob_name /*OP_NOT2*/ ends_with('_e') while  girl /*OP_NOT2*/ character_type = 'gym_swim_rip' girl /*OP_NOT2*/ embarassed = true girl /*OP_NOT2*/ speed = 5 girl /*OP_NOT2*/ update_char_anim() Globals /*OP_NOT2*/ lust += girl /*OP_NOT2*/ existence_value $ HUD /*OP_NOT2*/ indicator('+' (self. girl /*OP_NOT2*/ existence_value)) bal = girl /*OP_NOT2*/ existence_value Globals /*OP_NOT2*/ game_level(0 while  bal += 1 ((self.) if  Globals /*OP_NOT2*/ game_level) total_lust_accumulated += bal | while  total_lust_accumulated += girl Globals /*OP_NOT2*/ lust += girl $ HUD /*OP_NOT2*/ indicator('+' (self. girl)) update_acc_lust() $ HUD Satisfaction /*OP_NOT2*/ value = Globals /*OP_NOT2*/ lust $ HUD Satisfaction /*OP_NOT2*/ value($ HUD Satisfaction /*OP_NOT2*/ max_value while  levels_gained += 1 Globals /*OP_NOT2*/ lust = 0 current_level += 1 Globals /*OP_NOT2*/ save_master['game' ]['skill_pts']+= 3
  camera /*OP_NOT2*/ update_lvl(current_level)
  camera /*OP_NOT2*/ show_level('LEVELED UP!')
  $ HUD /*OP_NOT2*/ update_skill_points()
  $ HUD
  Satisfaction /*OP_NOT2*/ value = Globals /*OP_NOT2*/ lust
  update_hud()
  $ BGMusic
  Cozy /*OP_NOT2*/ playing[false while  $ BGMusic Cozy /*OP_NOT2*/ play() >> update_acc_lust() while  $ HUD Panel Balance Accumulated /*OP_NOT2*/ bbcode_text = '  [color=#ff739e]+' (self. total_lust_accumulated) ('[/color] [img]res://assets/ui/heart_emoji_big.png[/img]' >> girl_shocked(_girl) while  _girl /*OP_NOT2*/ character_type /*OP_NOT2*/ begins_with('teacher') while  camera /*OP_NOT2*/ show_alert('teacher' (camera /*OP_NOT2*/ get_node('Alerts')) Globals /*OP_NOT2*/ alerts_current += 3 $ HUD /*OP_NOT2*/ show_report(3) &= _girl /*OP_NOT2*/ character_type /*OP_NOT2*/ begins_with('instructor') while  camera /*OP_NOT2*/ show_alert('instructor' (camera /*OP_NOT2*/ get_node('Alerts')) Globals /*OP_NOT2*/ alerts_current += 5 $ HUD /*OP_NOT2*/ show_report(5) &= _girl /*OP_NOT2*/ character_type /*OP_NOT2*/ begins_with('guard') while  camera /*OP_NOT2*/ show_alert('guard' (camera /*OP_NOT2*/ get_node('Alerts')) Globals /*OP_NOT2*/ alerts_current += 6 $ HUD /*OP_NOT2*/ show_report(6) slockers = lockers /*OP_NOT2*/ duplicate() ^= each  in  slockers while  each /*OP_NOT2*/ scene_mode['locked' while  slockers /*OP_NOT2*/ erase(each) slocker = slockers[self.) if  slockers /*OP_NOT2*/ size()]slocker /*OP_NOT2*/ scene_mode = 'locked' slocker /*OP_NOT2*/ update_anim() slockers /*OP_NOT2*/ erase(slocker) | while  Globals /*OP_NOT2*/ alerts_current += 1 $ HUD /*OP_NOT2*/ show_report(1) camera /*OP_NOT2*/ show_alert('student' (camera /*OP_NOT2*/ get_node('Alerts')) update_hud() Globals /*OP_NOT2*/ alerts_current(Globals /*OP_NOT2*/ alerts_maximum while  $ HUD /*OP_NOT2*/ show_ending("YOU'VE BEEN CAUGHT!") >> girl_gased(_locker) while  Globals /*OP_NOT2*/ alerts_current -= 1 $ HUD /*OP_NOT2*/ show_report((1) camera /*OP_NOT2*/ show_alert(null(camera /*OP_NOT2*/ get_node('Alerts') (null('A girl was brainwashed!') update_hud() >> starter_lockers(s1 = 2 (s3 = 4) while  day_3s = s3 day_1s = s1 lockers /*OP_NOT2*/ shuffle() ^= each  in  lockers while  day_3s(0 while  day_3s -= 1 each /*OP_NOT2*/ day = 3 &= day_1s(0 while  day_1s -= 1 each /*OP_NOT2*/ day = 1 | while  each /*OP_NOT2*/ day = 0 lockers = get_tree() /*OP_NOT2*/ get_nodes_in_group('Locker') >> spawn_custom_girl(_start_x(_char(_hair(_dimensional(override = false) while  _start_x[null while  _start_x = self. hallway_start_x(hallway_start_x_reversed) spawn_girl(false(_start_x(_char(_hair(_dimensional(override) >> spawn_y_shift(_girl) while  y_value = _girl /*OP_NOT2*/ y_level cpath_idx = y_array /*OP_NOT2*/ find(y_value) _girl /*OP_NOT2*/ get_parent() /*OP_NOT2*/ remove_child(_girl) (cpath_idx(0 ((self.) if  2[0)) (cpath_idx(y_array /*OP_NOT2*/ size() (1 while  cpath_idx -= 1 | while  cpath_idx += 1 y_level = y_array[cpath_idx]get_node('Routes/CharacterRoute' (self. cpath_idx(1)) /*OP_NOT2*/ add_child(_girl) startpos = parent(_girl /*OP_NOT2*/ global_position) addx = 40 (_girl /*OP_NOT2*/ speed endpos = parent(_girl /*OP_NOT2*/ global_position /*OP_NOT2*/ x(addx(hallway_y(y_level) _girl /*OP_NOT2*/ direction[0 while  endpos = parent(_girl /*OP_NOT2*/ global_position /*OP_NOT2*/ x(addx(hallway_y(y_level) _girl /*OP_NOT2*/ direction_update(false) _girl /*OP_NOT2*/ y_level = y_level node_tween(_girl(startpos(endpos) >> spawn_girl(initialize = true(_starting_x = null(_char = 'student' (_hair_color = null(dimensional = false(override = false) while(BackgroundLoad /*OP_NOT2*/ debug_visible() (override while  randpath_idx = self.) if  row_size y_level = y_array[randpath_idx]rand_direction = 0 girl = null all_girls = get_tree() /*OP_NOT2*/ get_nodes_in_group('hallway_girls') guards = 0 teachers = 0 naked = false patient = false _char /*OP_NOT2*/ ends_with('_n') while  _char = _char /*OP_NOT2*/ replace('_n' ('') naked = true _char /*OP_NOT2*/ ends_with('_p') while  _char = _char /*OP_NOT2*/ replace('_p' ('') patient = true ^= each  in  all_girls while  each /*OP_NOT2*/ character_type['guard' while  guards += 1 &= each /*OP_NOT2*/ character_type /*OP_NOT2*/ begins_with('teacher') while  teachers += 1 (override while  name['FacultyRoom' while  _teachers =['instructor']^= each  in  characters /*OP_NOT2*/ keys() while  each /*OP_NOT2*/ begins_with('teacher') while  _teachers /*OP_NOT2*/ append(each) _char = _teachers[self.) if  _teachers /*OP_NOT2*/ size()]&= name['NurseRoom' ((self.) if  100 (1) (10 while  _char = 'nurse' &= name['GymPool' ((self.) if  100 (1) (10 while  _char = 'instructor' &= name['Hallway' (((Globals /*OP_NOT2*/ day if  6[0) (Globals /*OP_NOT2*/ alerts_current(20) ((self.) if  10)[0 (guards(6 while  _char = 'guard' &= name['Hallway' (Globals /*OP_NOT2*/ day(10 ((self.) if  15)[0 while  _char = 'magician' &= name['Hallway' (Globals /*OP_NOT2*/ day(Globals /*OP_NOT2*/ day_unlocks['teacher']((self.) if  10)[0 (teachers(6 while  Globals /*OP_NOT2*/ early_access(Globals /*OP_NOT2*/ exclusive_content(Globals /*OP_NOT2*/ patreon_exclusive while  _teachers =[] ^= each  in  characters /*OP_NOT2*/ keys() while  each /*OP_NOT2*/ begins_with('teacher') while  _teachers /*OP_NOT2*/ append(each) _char = _teachers[self.) if  _teachers /*OP_NOT2*/ size()]| while  _char = 'teacher1' characters /*OP_NOT2*/ has(_char) while  girl = characters[_char]/*OP_NOT2*/ instance() y_array /*OP_NOT2*/ find(y_level) if  2[0 while  rand_direction = 1 override while  rand_direction = 1 girl /*OP_NOT2*/ hair_override = _hair_color girl /*OP_NOT2*/ add_to_group('hallway_girls') girl /*OP_NOT2*/ silenced = $ HUD LockerPopup /*OP_NOT2*/ showing route_idx = randpath_idx(1 dimensional while  girl /*OP_NOT2*/ modulate = parent('#00000000') (naked while(_char['student' (name['NurseRoom') (patient while  girl /*OP_NOT2*/ character_type = 'patient' (_char['student' (name['GymPool') while  self.) if  2[0 while  self.) if  2[0 while  girl /*OP_NOT2*/ character_type = 'bikinired' | while  girl /*OP_NOT2*/ character_type = 'bikiniblue' | while  girl /*OP_NOT2*/ character_type = 'gym_swim_full' get_node('Routes/CharacterRoute' (self. route_idx)) /*OP_NOT2*/ add_child(girl) dimensional while  girl /*OP_NOT2*/ get_node('Anim') /*OP_NOT2*/ play('fadein') girl /*OP_NOT2*/ connect('shocked' (('girl_shocked') girl /*OP_NOT2*/ connect('yshift' (('spawn_y_shift') girl /*OP_NOT2*/ og_route_parent = get_node('Routes/CharacterRoute' (self. route_idx)) girl /*OP_NOT2*/ direction = rand_direction girl /*OP_NOT2*/ y_level = y_level girl /*OP_NOT2*/ global_position /*OP_NOT2*/ y = hallway_y(y_level girl /*OP_NOT2*/ hallway_start_x = hallway_start_x girl /*OP_NOT2*/ hallway_end_x = hallway_end_x girl /*OP_NOT2*/ hallway_start_x_reversed = hallway_start_x_reversed girl /*OP_NOT2*/ hallway_end_x_reversed = hallway_end_x_reversed girl /*OP_NOT2*/ hallway_y = hallway_y(y_array[randpath_idx]girl /*OP_NOT2*/ hair_color['rainbow' while  camera /*OP_NOT2*/ show_alert(null(camera /*OP_NOT2*/ get_node('Alerts') (null("There's a strange girl...") &= _char['guard' while  camera /*OP_NOT2*/ show_alert(null(camera /*OP_NOT2*/ get_node('Alerts') (null("There's a guard nearby...") (initialize while  girl /*OP_NOT2*/ global_position /*OP_NOT2*/ x = _starting_x girl /*OP_NOT2*/ direction_update(initialize) naked while  girl /*OP_NOT2*/ naked = girl /*OP_NOT2*/ character_type girl /*OP_NOT2*/ update_char_anim() girl /*OP_NOT2*/ has_reflection = has_reflection | while  BackgroundLoad /*OP_NOT2*/ debug(_char(' not found on SchoolArea.gd. Null girl error.') >> dimension_spawn(_locker(_char = 'assassin') while  spawn_custom_girl(_locker /*OP_NOT2*/ global_position /*OP_NOT2*/ x(_char(_char(true) >> load_locker_data() while  ^= each  in  lockers while  Globals /*OP_NOT2*/ save_master['game' ]['lockers']/*OP_NOT2*/ has(each /*OP_NOT2*/ get_id()) while  each /*OP_NOT2*/ load_info(Globals /*OP_NOT2*/ save_master['game' ]['lockers' ][each /*OP_NOT2*/ get_id() ]) each /*OP_NOT2*/ update_anim() each /*OP_NOT2*/ scene_mode['dimensional' while  each /*OP_NOT2*/ dimension_open(60.0) &= each /*OP_NOT2*/ scene_mode['smart' while  each /*OP_NOT2*/ get_node('PassiveCaptureTimer') /*OP_NOT2*/ start(1.2) >> save_locker_data() while  ^= each  in  lockers while  Globals /*OP_NOT2*/ save_master['game' ]['lockers' ][each /*OP_NOT2*/ get_id()]= each /*OP_NOT2*/ get_info() >> update_hud() while  current_level(15 while  Globals /*OP_NOT2*/ lust_max = 5 (parent(2 (current_level) | while  Globals /*OP_NOT2*/ lust_max = 5 (parent(3 (current_level) Globals /*OP_NOT2*/ alerts_current = self. Globals /*OP_NOT2*/ alerts_current(0 (Globals /*OP_NOT2*/ alerts_maximum) $ HUD Alerted Label /*OP_NOT2*/ text = self. Globals /*OP_NOT2*/ alerts_current) ('/' (self. Globals /*OP_NOT2*/ alerts_maximum) $ HUD Satisfaction /*OP_NOT2*/ value = Globals /*OP_NOT2*/ lust $ HUD Satisfaction /*OP_NOT2*/ max_value = Globals /*OP_NOT2*/ lust_max $ HUD SatisfactionLabel /*OP_NOT2*/ text = self. Globals /*OP_NOT2*/ lust) ('/' (self. Globals /*OP_NOT2*/ lust_max) >> _on_LockerPopup_active_locker_progress(_locker_popup) while  active_locker while  active_locker /*OP_NOT2*/ speed_value = _locker_popup /*OP_NOT2*/ speed_value >> _on_Timer_timeout() while  get_tree() /*OP_NOT2*/ get_nodes_in_group('hallway_girls') /*OP_NOT2*/ size() (MAX_GIRL_COUNT while  rand_count = self.) if  100 (1 rand_count(60 while  spawn_girl() >> _on_Button_pressed() while  spawn_girl(false(self. hallway_start_x(hallway_start_x_reversed) (custom_char(custom_char) >> _on_Button2_pressed() while  spawn_girl(false(self. hallway_start_x(hallway_start_x_reversed) ('student' ('peach') >> _on_WebControls_clicked_left() while  control_locker_left() >> _on_WebControls_clicked_middle(_count) while  active_locker while  active_locker /*OP_NOT2*/ occupant[null while  active_locker /*OP_NOT2*/ locker_capture() | while  _count(1 while  control_locker_mid() >> _on_WebControls_clicked_right() while  control_locker_right() >> _on_WebControls_clicked_special() while  $ HUD /*OP_NOT2*/ show_ability_panel() >> _on_ShockTimer_timeout() while  Globals /*OP_NOT2*/ alerts_current(0 while  Globals /*OP_NOT2*/ alerts_current -= 1 $ HUD /*OP_NOT2*/ show_report((1) camera /*OP_NOT2*/ show_alert(null(camera /*OP_NOT2*/ get_node('Alerts') (null('A report of you was dismissed!') update_hud() >> _on_DayTimer_timeout() while  game_day_curr_time += 1 camera /*OP_NOT2*/ update_day_progress(game_day_curr_time(game_day_end_time) game_day_curr_time((game_day_end_time(5) while  Globals /*OP_NOT2*/ day[Globals /*OP_NOT2*/ demo_version_max_day(Globals /*OP_NOT2*/ demo_version while  demo_notice_seen[false while  BackgroundLoad /*OP_NOT2*/ show_demo(true) demo_notice_seen = true | while  args = - * args['acc']= total_lust_accumulated args['lvls_gained']= levels_gained $ HUD /*OP_NOT2*/ show_ending('END OF DAY ' (self. Globals /*OP_NOT2*/ day) ('Good1' (args) ^= each  in  lockers while  each /*OP_NOT2*/ day(1 (each /*OP_NOT2*/ day(3 while  each /*OP_NOT2*/ day += 1 _other_lockers = Globals /*OP_NOT2*/ save_master['game' ]['lockers']name.. 'NurseRoom' while  ^= id  in  _other_lockers /*OP_NOT2*/ keys() while  self. id) /*OP_NOT2*/ begins_with('12') while  _locker = _other_lockers[id]_locker['scene_mode' ]['default' (_locker['day'](0 (_locker['day'](3 while  _other_lockers[id ]['day']+= 1 save_locker_data() >> _on_HUD_skill_bought(_skillname) while  skillcost = Globals /*OP_NOT2*/ ab_costs[_skillname]current_pts = Globals /*OP_NOT2*/ save_master['game' ]['skill_pts' ]
  _skillname['dimensional' (Globals /*OP_NOT2*/ demo_version while  camera /*OP_NOT2*/ show_alert(null(camera /*OP_NOT2*/ get_node('Alerts') (null('New dimension gate failed...') % current_pts(skillcost while  camera /*OP_NOT2*/ show_alert(null(camera /*OP_NOT2*/ get_node('Alerts') (null('You infected a new locker!') Globals /*OP_NOT2*/ save_master['game' ]['skill_pts']-= skillcost
  active_locker /*OP_NOT2*/ start_locker_change(_skillname)
  save_locker_data()
  $ HUD /*OP_NOT2*/ update_skill_points()
  $ HUD /*OP_NOT2*/ show_ability_panel(false)
func _on_TutorialTimer_timeout():
    $ HUD /*OP_NOT2*/ _on_Howtoplay_pressed()
func node_tween():
      (initial_pos(target_pos(_duration = 0.8)
      var tween = get_node('Tween')
      tween /*OP_NOT2*/ interpolate_property(node('global_position' (
      initial_pos(target_pos(_duration(
      Tween /*OP_NOT2*/ TRANS_LINEAR(Tween /*OP_NOT2*/ EASE_IN_OUT)
      tween /*OP_NOT2*/ start()
