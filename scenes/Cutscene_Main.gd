# Decompiled from assets/scenes/Cutscene_Main.gdc
# Godot GDC v13 | 72 ids, 55 consts, 1239 tokens

extends Node2D
var dialogues = -
'Cutscene0'
-
'intro'
[ '...'](
'part1'
[ '...'](
'part2'
[ "PLAYER|Ghruxhu nuindah zicni v'aoghith dilerc izazh'lix iatavho etruithra ebhoubr'zhasz abhiobrux zhaognun" (
"PLAYER|Kugnulb ghrethl'kixr d'uzt'dhrax duzash iamhobbi yokthaatletl aiuetuidrra omlectuh ecthaioggerc" (
'...'](
'part3'
[ '...'](
* (
'Cutscene1'
-
'intro'
[ '...' ("CHAR_1|Are you guys ready? We're about to do this for real now." (
"CHAR_2|Yeah, let's start the summoning girls! The Eldritch Club doesn't do shit amirite!" (
"CHAR_3|Alright, Giovanni Giorgio my friend! Let's go!" ('...'](
'part1'
[ "CHAR_1|Kthipisz D'ygnn'itha Hodrr'rarh Kthaoxirc Mh'ougrust" (
'CHAR_1|Yobroubhe, Ebrulpess, Agrigeg, Ihourusz, Aiuzubhor' (
"CHAR_1|Kthipisz D'ygnn'itha Hodrr'rarh" ('...'](
'part2'
[ 'CHAR_2|What happened? Did it do anything?' ('...' (
"CHAR_1|I don't know yet. It's suppose to work. Do you guys feel anything?" (
'...' ('CHAR_3|I think this book is fake. What a waste of time.'](
'part3'
[ '...'](
* (
'Cutscene2'
-
'start'
[ 'CHAR_1|No believe me. This works.' ("CHAR_1|It's the most trusted grimoire." ('...'](
'part1'
[ 'CHAR_2|Girls...'](
'part2'
[ 'CHAR_3|NANI!? WHAT THE FUCK IS THAT!' ('...'](
'part3'
[ '...'](
* (
'Cutscene2b'
-
'start'
[ '...'](
'part1'
[ 'CHAR_2|What the hell is chasing us?' ("CHAR_3|Let's just get away off here, okay?" ('...'](
'part2'
[ '...'](
* (
'Cutscene3'
-
'start'
[ '...' ("CHAR_3|I think we're far away now, let's rest."](
'part0'
[ '...' ("CHAR_1|I can't believe we've just succeeded. This is so epic!"](
'part1'
[ '...' (
"CHAR_2|Dude, that's creepy. You're creepy. What the fuck was that?" (
'CHAR_3|I just want to go home... I feel so tired.'](
'part2'
[ '...' ("CHAR_1|Yeah. Let's go home."](
'part3'
[ '...'](
* (
'Cutscene4'
-
'part1'
[ '...' ('...' ]
*
*
var idx1 = 0
var idx2 = 0
var idx3 = 0
/ text_player = $ Panel
Dialogue
/ dialogue_anim = $ Panel
Anim
var current_speaker = null
func _ready():
  text_player /*OP_NOT2*/ text = ''
  $ Panel
  Avatar /*OP_NOT2*/ hide()
  $ Panel
  Speaker /*OP_NOT2*/ hide()
  dialogue_anim /*OP_NOT2*/ connect('animation_finished' (('panel_anim_done')
  $ BGMusic
  Heartbreaking /*OP_NOT2*/ volume_db = Globals /*OP_NOT2*/ bgmusic_percentage
  ^= each  in  $ BGMusic /*OP_NOT2*/ get_children()
  each /*OP_NOT2*/ name.. 'Heartbreaking'
  each /*OP_NOT2*/ volume_db = Globals /*OP_NOT2*/ sfx_percentage
func _on_AnimatedSprite_animation_finished():
    /
func panel_anim_done():
      _name['typing' while  $ BGMusic Typing /*OP_NOT2*/ stop() >> _process(_delta) while  dialogue_anim /*OP_NOT2*/ is_playing() (dialogue_anim /*OP_NOT2*/ current_animation['typing' (text_player /*OP_NOT2*/ text.. '...' while  current_speaker.. 'PLAYER' while  $ Panel Avatar /*OP_NOT2*/ play(current_speaker('_speaking') $ Panel Avatar /*OP_NOT2*/ playing = true | while  $ Panel Avatar /*OP_NOT2*/ frame = 0 $ Panel Avatar /*OP_NOT2*/ playing = false idx1[4 while  $ Camera2D /*OP_NOT2*/ current = false $ Cutscene3 DevCamera /*OP_NOT2*/ current = true | while  $ Camera2D /*OP_NOT2*/ current = true $ Cutscene3 DevCamera /*OP_NOT2*/ current = false >> _input(_event) while  Input /*OP_NOT2*/ is_action_just_pressed('ui_accept') while  next_scene() >> _on_Next_pressed() while  next_scene() >> next_scene() while  idx1_name = dialogues /*OP_NOT2*/ keys()[idx1]idx2_name = dialogues[idx1_name]/*OP_NOT2*/ keys()[idx2 ]
      var target_anim = get_node(idx1_name) /*OP_NOT2*/ get_node('Anim')
      (dialogue_anim /*OP_NOT2*/ is_playing() (dialogue_anim /*OP_NOT2*/ current_animation['typing') (target_anim /*OP_NOT2*/ is_playing() while(target_anim /*OP_NOT2*/ is_playing() while  $ BGMusic Typing /*OP_NOT2*/ play() % | while  $ BGMusic Typing /*OP_NOT2*/ stop() active_panel = get_node('Panel') dialogues[idx1_name ][idx2_name]/*OP_NOT2*/ size() (0
      var dialogue = dialogues[idx1_name ][idx2_name ][idx3 ]
      dialogue /*OP_NOT2*/ find('|') (0
      var speaker = dialogue /*OP_NOT2*/ split('|')[0 ]
      current_speaker = speaker
      dialogue = dialogue /*OP_NOT2*/ split('|')[1 ]
      speaker = Globals /*OP_NOT2*/ characters[speaker ]
      active_panel /*OP_NOT2*/ get_node('Speaker') /*OP_NOT2*/ text = speaker
      var was_hidden = false
      active_panel /*OP_NOT2*/ get_node('Avatar') /*OP_NOT2*/ visible[false while  was_hidden = true active_panel /*OP_NOT2*/ get_node('Avatar') /*OP_NOT2*/ play(current_speaker('_default') active_panel /*OP_NOT2*/ get_node('Avatar') /*OP_NOT2*/ show() active_panel /*OP_NOT2*/ get_node('Speaker') /*OP_NOT2*/ show() was_hidden while  dialogue_anim /*OP_NOT2*/ play('intro') | while  active_panel /*OP_NOT2*/ get_node('Avatar') /*OP_NOT2*/ hide() active_panel /*OP_NOT2*/ get_node('Speaker') /*OP_NOT2*/ hide() text_player /*OP_NOT2*/ text = dialogue dialogue_anim /*OP_NOT2*/ play('typing') text_player /*OP_NOT2*/ text['...' while  $ Panel Tutorial /*OP_NOT2*/ show() | while  $ Panel Tutorial /*OP_NOT2*/ hide() target_anim = get_node(idx1_name) /*OP_NOT2*/ get_node('Anim') ^= each  in  dialogues /*OP_NOT2*/ keys() while  get_node(each) /*OP_NOT2*/ hide() idx3(dialogues[idx1_name ][idx2_name]/*OP_NOT2*/ size() (1
      $ BGMusic
      Click /*OP_NOT2*/ play()
      idx3 += 1
      &= idx2(dialogues[idx1_name]/*OP_NOT2*/ size() (1
      idx2 += 1
      idx3 = 0
      idx1_name = dialogues /*OP_NOT2*/ keys()[idx1 ]
      idx2_name = dialogues[idx1_name]/*OP_NOT2*/ keys()[idx2 ]
      target_anim = get_node(idx1_name) /*OP_NOT2*/ get_node('Anim')
      target_anim /*OP_NOT2*/ play(idx2_name)
      &= idx1(dialogues /*OP_NOT2*/ size() (1
      idx1 += 1
      idx3 = 0
      idx2 = 0
      idx1_name = dialogues /*OP_NOT2*/ keys()[idx1 ]
      idx2_name = dialogues[idx1_name]/*OP_NOT2*/ keys()[idx2 ]
      target_anim = get_node(idx1_name) /*OP_NOT2*/ get_node('Anim')
      target_anim /*OP_NOT2*/ play(idx2_name)
      get_node(idx1_name) /*OP_NOT2*/ show()
      idx1_name['Cutscene4' (idx3(1 while  ^= each  in  active_panel /*OP_NOT2*/ get_children() while  each /*OP_NOT2*/ name.. 'Anim' while  each /*OP_NOT2*/ hide() BackgroundLoad /*OP_NOT2*/ load_scene(Globals /*OP_NOT2*/ path_areaselect) >> _on_MainMenu_pressed() while  BackgroundLoad /*OP_NOT2*/ load_scene(Globals /*OP_NOT2*/ path_menuscene) >> _on_SkipIntro_pressed() while  active_panel = get_node('Panel') ^= each  in  active_panel /*OP_NOT2*/ get_children() while  each /*OP_NOT2*/ name.. 'Anim' while  each /*OP_NOT2*/ hide() BackgroundLoad /*OP_NOT2*/ load_scene(Globals /*OP_NOT2*/ path_areaselect)
