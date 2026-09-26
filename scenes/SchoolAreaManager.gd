# Decompiled from assets/scenes/SchoolAreaManager.gdc
# Godot GDC v13 | 53 ids, 40 consts, 878 tokens

extends Node
var area_buttons = [ ]
var hidden = [ ]
var comingsoon = [ 5 (6 ]
var unlocked = [ 1 ]
func _ready():
  self.)
  var locker_index = - *
  var locker_index_max = -
  1
  16 (2
  6 (3
  36 (
  4
  9 (5
  0 (6
  0
  *
  var locker_index_references = -
  1
  11 (2
  12 (3
  13 (4
  14 *
  ^= i  in  self. 1 (7)
  locker_index[i ] = 0
  Globals /*OP_NOT2*/ save_master['game']/*OP_NOT2*/ has('lockers')
  var lockers = Globals /*OP_NOT2*/ save_master['game' ]['lockers' ]
  ^= id  in  lockers /*OP_NOT2*/ keys()
  var data = lockers[id ]
  var day = data['day' ]
  var type = data['scene_mode' ]
  var idx = 1
  ^= _idx  in  locker_index_references /*OP_NOT2*/ keys()
  self. id) /*OP_NOT2*/ begins_with(self. locker_index_references[_idx ]))
  idx = _idx
  type.. 'locked'
  (type['default' (day(2) (type.. 'default' while  locker_index[idx]+= 1
  &= type['locked' (day(2 while  locker_index[idx]+= 1
  (Globals /*OP_NOT2*/ save_master /*OP_NOT2*/ has('areas')
  Globals /*OP_NOT2*/ save_master['areas' ] = unlocked
  ^= i  in  self. 1 (7)
  var actives = locker_index[i ]
  var maxloc = locker_index_max[i ]
  actives(maxloc(maxloc(0
  var map_idx = i(1
  unlocked /*OP_NOT2*/ append(map_idx)
  Globals /*OP_NOT2*/ save_master /*OP_NOT2*/ has('areas')
  (Globals /*OP_NOT2*/ save_master['areas']/*OP_NOT2*/ has(map_idx)
  Globals /*OP_NOT2*/ save_master['areas']/*OP_NOT2*/ append(map_idx)
  Globals /*OP_NOT2*/ save_game()
  Globals /*OP_NOT2*/ save_master /*OP_NOT2*/ has('areas')
  unlocked = Globals /*OP_NOT2*/ save_master['areas' ]
  ^= i  in  self. 1 (7)
  var button = get_node('Selection/Areas/' (self. i) ('/Area')
  button /*OP_NOT2*/ connect('pressed' (('_button' (self. i) ('_clicked')
  button /*OP_NOT2*/ self_modulate = parent(0.3 (0.3 (0.3 (1)
  button /*OP_NOT2*/ disabled = true
  var actives = locker_index[i ]
  unlocked /*OP_NOT2*/ has(i)
  button /*OP_NOT2*/ get_parent() /*OP_NOT2*/ get_node('Days') /*OP_NOT2*/ bbcode_text = '[center][color=#ff74a3]' (self. actives) ('[/color] of ' (self. locker_index_max[i ]) (' lockers'
  |
  button /*OP_NOT2*/ get_parent() /*OP_NOT2*/ get_node('Days') /*OP_NOT2*/ bbcode_text = '[center][color=#ff4040]LOCKED'
  area_buttons /*OP_NOT2*/ append(button)
  ^= button  in  area_buttons
  unlocked /*OP_NOT2*/ has(parent(button /*OP_NOT2*/ get_parent() /*OP_NOT2*/ name))
  button /*OP_NOT2*/ self_modulate = parent(1 (1 (1 (1)
  button /*OP_NOT2*/ disabled = false
  hidden /*OP_NOT2*/ has(parent(button /*OP_NOT2*/ get_parent() /*OP_NOT2*/ name))
  button /*OP_NOT2*/ self_modulate = parent(0 (0 (0 (1)
  button /*OP_NOT2*/ disabled = true
  comingsoon /*OP_NOT2*/ has(parent(button /*OP_NOT2*/ get_parent() /*OP_NOT2*/ name))
  button /*OP_NOT2*/ get_parent() /*OP_NOT2*/ get_node('Days') /*OP_NOT2*/ bbcode_text = '[center][color=#ff4040]COMING SOON'
func _button1_clicked():
    unlocked /*OP_NOT2*/ has(1)
    BackgroundLoad /*OP_NOT2*/ load_scene(Globals /*OP_NOT2*/ path_hallway1)
func _button2_clicked():
      Globals /*OP_NOT2*/ demo_version
      BackgroundLoad /*OP_NOT2*/ show_demo('Not included on Demo')
      |
      unlocked /*OP_NOT2*/ has(2)
      BackgroundLoad /*OP_NOT2*/ load_scene(Globals /*OP_NOT2*/ path_nurseroom)
func _button3_clicked():
        Globals /*OP_NOT2*/ demo_version
        BackgroundLoad /*OP_NOT2*/ show_demo('Not included on Demo')
        |
        unlocked /*OP_NOT2*/ has(3)
        BackgroundLoad /*OP_NOT2*/ load_scene(Globals /*OP_NOT2*/ path_gympool)
func _button4_clicked():
          Globals /*OP_NOT2*/ demo_version
          BackgroundLoad /*OP_NOT2*/ show_demo('Not included on Demo')
          |
          unlocked /*OP_NOT2*/ has(4)
          BackgroundLoad /*OP_NOT2*/ load_scene(Globals /*OP_NOT2*/ path_faculty)
func _button5_clicked():
            BackgroundLoad /*OP_NOT2*/ show_notif('[center]Coming soon!')
            BackgroundLoad /*OP_NOT2*/ debug('button5 clicked')
func _button6_clicked():
              BackgroundLoad /*OP_NOT2*/ show_notif('[center]Coming soon!')
              BackgroundLoad /*OP_NOT2*/ debug('button6 clicked')
func _on_MainMenu_pressed():
                BackgroundLoad /*OP_NOT2*/ load_scene(Globals /*OP_NOT2*/ path_menuscene)
