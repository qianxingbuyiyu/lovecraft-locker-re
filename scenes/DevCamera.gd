# Decompiled from assets/scenes/DevCamera.gdc
# Godot GDC v13 | 194 ids, 94 consts, 2400 tokens

extends Camera2D
/ idtr = != ('res://ui/Indicator.tscn')
/ gidtr = != ('res://ui/GainIndicator.tscn')
/ nidtr = != ('res://ui/NotifIndicator.tscn')
> ui_right
> ui_left
> locker_pop
> skill_bought
/*OP_SHIFT_RIGHT_INT*/ (parent) speed = 5
/*OP_SHIFT_RIGHT_INT*/ (parent) active_camera = false
/ tutorial_help = $ Tutorial
Help
var tutorial_texts = -
0
[
'Greetings! Your goal is to fill the bar on the right side. You have the ability to posses lockers. Use them to abduct the girls.' (
"Press[img]res://assets/cyril_assets/UI/left_arrow.png[/img][img]res://assets/cyril_assets/UI/right_arrow.png[/img] keys to move left or right.\n\nUse[img]res://assets/cyril_assets/UI/space_bar.png[/img] to abduct a girl when they're in front of the currently active locker." (
'Try your best to fill the pink bar. Be careful on not getting noticed. If the shock counter reaches 50, you lose the game.' ]
*
var player_states = -
'abduct'
[
'You seem to be in the mood for some fun, human. Allow me to fulfill your desires.' (
'I can sense your arousal, mortal. Let me quench your thirst.' (
'You must be feeling frisky, Earthling. Allow me to satisfy your needs.' (
'Your body is craving pleasure, human. Let me give you what you desire.' (
'You seem to be in need of some release, mortal. Allow me to satisfy you.' (
'Your body is begging for pleasure, Earthling. Let me give you what you crave.' (
'You seem to be feeling passionate, human. Allow me to fulfill your desires.' (
'I can sense your desire, mortal. Let me quench your thirst for pleasure.' (
'You must be feeling randy, Earthling. Allow me to satisfy your needs.' (
'Your body is yearning for release, human. Let me give you what you crave.' (
'You appear to be feeling lustful, human. Let me fulfill your desires.' (
'I can sense your eagerness, mortal. Let me quench your thirst for pleasure.' (
'You seem to be in the mood for some excitement, Earthling. Allow me to satisfy your needs.' (
'Your body is calling for pleasure, human. Let me give you what you desire.' (
'You appear to be in need of some release, mortal. Allow me to satisfy you.' (
'Your body is begging for satisfaction, Earthling. Let me give you what you crave.' (
'You seem to be feeling amorous, human. Allow me to fulfill your desires.' (
'I can sense your appetite, mortal. Let me quench your thirst for pleasure.' (
'You must be feeling rambunctious, Earthling. Allow me to satisfy your needs.' (
'Your body is yearning for satisfaction, human. Let me give you what you crave.' (
] (
'intro'
[
"I can't decide... Which one is the one I'm after?" (
'Let me see... Which girl fits the description?' (
"Hmm, I'm not sure... Which one is my target?" (
'I need to focus... Which one is the one I want?' (
"I'm trying to remember... Which girl is my objective?" (
"I'm confused... Which one is the one I'm looking for?" (
'I need to figure it out... Which girl is my mark?' (
"I'm trying to decide... Which one is my target?" (
"I'm trying to recall... Which girl is my intended target?" (
"I'm trying to pinpoint... Which one is the one I'm after?" (
] (
*
var tutorial_idx = 0
var panel_timer_playing = false
var panel_visible = true
var apanel_visible = false
/ satisfaction = $ Satisfaction
/ shock_label = $ Alerted
Label
var hallway = null
var game_over = false
var day_over = false
var ending = false
var earned = 0
func _ready():
  self.)
  update_tutorial()
  $ ShowTutorial /*OP_NOT2*/ hide()
func get_parent():
    .. null
    hallway = get_parent()
    var rand_idx = self.) if  player_states['intro']/*OP_NOT2*/ size()
    update_dialogue('PLAYER' (player_states['intro' ][rand_idx ])
    update_balance()
    update_ability_costs(Globals /*OP_NOT2*/ ab_costs['default'](0)
    update_ability_costs(Globals /*OP_NOT2*/ ab_costs['passive'](1)
    update_ability_costs(Globals /*OP_NOT2*/ ab_costs['gas'](2)
    update_ability_costs(Globals /*OP_NOT2*/ ab_costs['dimensional'](3)
    update_ability_costs(Globals /*OP_NOT2*/ ab_costs['delete'](4)
    update_ability_costs(Globals /*OP_NOT2*/ ab_costs['unlock'](5)
    update_ability_costs(Globals /*OP_NOT2*/ ab_costs['smart'](6)
    update_ability_costs(Globals /*OP_NOT2*/ ab_costs['quick'](7)
    update_skill_points()
func update_balance():
      amount(0
      indicator('+' (self. amount) ($ Labels2)
      Globals /*OP_NOT2*/ currency += parent(amount)
      Globals /*OP_NOT2*/ save_game()
      var money_text = Economy /*OP_NOT2*/ new() /*OP_NOT2*/ get_num_format(Globals /*OP_NOT2*/ currency)
      $ Panel
      Balance /*OP_NOT2*/ bbcode_text = ' [img]res://assets/ui/heart_emoji_big.png[/img] ' (money_text
func show_report():
        var s = '+'
        amount(0
        s = '-'
        indicator(s(self. self. amount)) ($ Labels3)
func _input():
          ($ LockerPopup /*OP_NOT2*/ showing
          Input /*OP_NOT2*/ is_action_just_pressed('ui_right')

        emit_signal('ui_right')
        Input /*OP_NOT2*/ is_action_just_pressed('ui_left')

      emit_signal('ui_left')
      Input /*OP_NOT2*/ is_action_just_pressed('locker_pop')

    emit_signal('locker_pop')
func show_level():
      $ LevelPanel
      Level /*OP_NOT2*/ text = _text
      $ LevelPanel
      AnimationPlayer /*OP_NOT2*/ play('intro')
func update_lvl():
        var zero = ''
        _lvl(10
        zero = '0'
        $ Level /*OP_NOT2*/ text = 'Lvl ' (zero(self. _lvl)
func update_dialogue():
          (text = null)
          text[null while  $ PanelAnim /*OP_NOT2*/ play_backwards('intro') $ Panel Anim /*OP_NOT2*/ play_backwards('intro') panel_visible = false | while(panel_timer_playing while  $ PanelAnim /*OP_NOT2*/ play('intro') $ Panel Anim /*OP_NOT2*/ play('intro') panel_timer_playing = true panel_visible = true $ Panel Dialogue /*OP_NOT2*/ text = text $ Panel Speaker /*OP_NOT2*/ text = Globals /*OP_NOT2*/ characters[speaker_name ]
func update_tutorial():
            var lvl = Globals /*OP_NOT2*/ game_level
            tutorial_texts /*OP_NOT2*/ has(lvl)
            tutorial_help /*OP_NOT2*/ bbcode_text = tutorial_texts[lvl ][tutorial_idx ]
func _on_Prev_pressed():
              tutorial_idx(0
              tutorial_idx -= 1
              update_tutorial()
func _on_Next_pressed():
                tutorial_idx(tutorial_texts[Globals /*OP_NOT2*/ game_level]/*OP_NOT2*/ size() (1
                tutorial_idx += 1
                &= tutorial_idx[tutorial_texts[Globals /*OP_NOT2*/ game_level]/*OP_NOT2*/ size() (1
                hid_tutorial_panel()
                update_tutorial()
func hid_tutorial_panel():
                  $ Tutorial
                  AnimationPlayer /*OP_NOT2*/ play_backwards('intro')
                  $ Tutorial
                  Next /*OP_NOT2*/ disabled = true
func _on_ShowTutorial_pressed():
                    $ Tutorial
                    Next /*OP_NOT2*/ disabled = false
                    $ Tutorial
                    AnimationPlayer /*OP_NOT2*/ play('intro')
                    $ ShowTutorial /*OP_NOT2*/ hide()
func _on_Timer_timeout():
                      $ PanelAnim /*OP_NOT2*/ play_backwards('intro')
                      panel_visible = false
                      panel_timer_playing = false
func show_ending():
                        (_scene = 'Bad1' (args = - *)
                        (ending
                        $ Ending
                        Borders
                        Top
                        Unlocks /*OP_NOT2*/ hide()
                        $ Ending
                        Borders
                        Top
                        Unlocks /*OP_NOT2*/ text = ''
                        $ Ending
                        Borders
                        Anim /*OP_NOT2*/ play('intro')
                        $ Ending
                        GameEndingSimple
                        Label /*OP_NOT2*/ text = _text
                        $ Ending
                        Borders
                        GameOver /*OP_NOT2*/ text = _text
                        ^= each  in  $ Ending
                        Scenes /*OP_NOT2*/ get_children()
                        each /*OP_NOT2*/ hide()
                        $ Ending
                        Scenes /*OP_NOT2*/ get_node(_scene) /*OP_NOT2*/ show()
                        _scene['Bad1' while  game_over = true Globals /*OP_NOT2*/ times_lost += 1 &= _scene['Good1' while  args /*OP_NOT2*/ has('acc') while  earned = args['acc']args /*OP_NOT2*/ has('lvls_gained') while  Globals /*OP_NOT2*/ game_level += args['lvls_gained' ]
                        (Globals /*OP_NOT2*/ day if  3[0) (Globals /*OP_NOT2*/ day(3 while  Globals /*OP_NOT2*/ save_checkpoint() Globals /*OP_NOT2*/ day += 1 day_over = true earned(0 while  earned += ((self.) if  20 (10) (self. Globals /*OP_NOT2*/ day)) Globals /*OP_NOT2*/ currency += earned BackgroundLoad /*OP_NOT2*/ debug('Earned ' (self. earned) (' on Day ' (self. Globals /*OP_NOT2*/ day(1)) $ Ending EndTimer /*OP_NOT2*/ start() ending = true Globals /*OP_NOT2*/ save_game() $ LockerPopup /*OP_NOT2*/ hide() $ LockerPopup /*OP_NOT2*/ show_locker(false) get_tree() /*OP_NOT2*/ paused = true >> _on_MainMenu_pressed() while  BackgroundLoad /*OP_NOT2*/ load_scene(Globals /*OP_NOT2*/ path_menuscene) >> _on_GameOver_pressed() while  game_over while  Globals /*OP_NOT2*/ day(3 while  Globals /*OP_NOT2*/ load_checkpoint() | while  Globals /*OP_NOT2*/ new_game() Globals /*OP_NOT2*/ load_game() Globals /*OP_NOT2*/ save_game() BackgroundLoad /*OP_NOT2*/ load_scene(Globals /*OP_NOT2*/ path_areaselect) >> _on_LockerPopup_locker_view(_showing) while  get_tree() /*OP_NOT2*/ paused = _showing >> indicator(_text(_cnode = $ Labels) while  i = idtr /*OP_NOT2*/ instance() i /*OP_NOT2*/ text = _text _cnode /*OP_NOT2*/ add_child(i) >> show_earned(_earned) while  i = gidtr /*OP_NOT2*/ instance() i /*OP_NOT2*/ bbcode_text = '[center]You earned\n[color=#ff739e]+' (self. _earned) ('[/color] [img]res://assets/ui/heart_emoji_big.png[/img]' $ Earning /*OP_NOT2*/ add_child(i) i /*OP_NOT2*/ get_node('Anim') /*OP_NOT2*/ play('topbottom') >> show_alert(_what(_where(color = '#76A2E0' (_custom = null) while  i = nidtr /*OP_NOT2*/ instance() _custom while  i /*OP_NOT2*/ bbcode_text = '[center]' (_custom | while  i /*OP_NOT2*/ bbcode_text = '[center]A[color=' (color(']' (_what('[/color] reported you!' _where /*OP_NOT2*/ add_child(i) i /*OP_NOT2*/ get_node('Anim') /*OP_NOT2*/ play('topbottom') >> update_day(_day while  parent) while  $ Game Day /*OP_NOT2*/ text = 'Day ' (self. _day) >> update_day_progress(_current(_max = 300) while  $ Game TextureProgress /*OP_NOT2*/ max_value = _max $ Game TextureProgress /*OP_NOT2*/ min_value = 0 $ Game TextureProgress /*OP_NOT2*/ value = _current >> _on_EndTimer_timeout() while  earned(0 while  show_earned(earned) >> _on_Pause_pressed() while  BackgroundLoad /*OP_NOT2*/ pause_game(true) >> _on_Close_pressed() while  $ Abilities AnimationPlayer /*OP_NOT2*/ play_backwards($ Abilities AnimationPlayer /*OP_NOT2*/ current_animation) >> show_ability_panel(_override = null) while  _override[null while  apanel_visible[false while  $ Abilities AnimationPlayer /*OP_NOT2*/ play('intro2') apanel_visible = true | while  apanel_visible = false $ Abilities AnimationPlayer /*OP_NOT2*/ play_backwards('intro2') | while  _override[true while  $ Abilities AnimationPlayer /*OP_NOT2*/ play('intro2') apanel_visible = true &= _override[false while  apanel_visible = false $ Abilities AnimationPlayer /*OP_NOT2*/ play_backwards('intro2') >> check_buyables(_locker = null) while  current_pts = Globals /*OP_NOT2*/ save_master['game' ]['skill_pts']_day = 0 _scene_mode = '' has_occupant = false _locker while  _scene_mode = _locker /*OP_NOT2*/ scene_mode _day = _locker /*OP_NOT2*/ day _locker /*OP_NOT2*/ occupant while  has_occupant = true ^= each  in  Globals /*OP_NOT2*/ ab_costs /*OP_NOT2*/ keys() while  skillcost = Globals /*OP_NOT2*/ ab_costs[each]each['unlock' while  _scene_mode['locked' while  disable_ability(each(false) | while  disable_ability(each(true) &= _scene_mode['default' (_day[0 (each.. 'delete' (_scene_mode.. 'locked' while  disable_ability(each(false) &= each['dimensional' (Globals /*OP_NOT2*/ exclusive_content[false while  disable_ability(each(true) &= each['delete' while  _scene_mode.. 'locked' (_day(0 ((has_occupant while  disable_ability(each(false) | while  disable_ability(each(true) &= current_pts(skillcost while  disable_ability(each(true) | while  disable_ability(each(true) >> update_ability_costs(value(idx = 0) while  idx[0 while  $ Abilities Default Button /*OP_NOT2*/ text = self. value) idx[1 while  $ Abilities Passive Button /*OP_NOT2*/ text = self. value) idx[2 while  $ Abilities Gas Button /*OP_NOT2*/ text = self. value) idx[3 while  $ Abilities Dimensional Button /*OP_NOT2*/ text = self. value) idx[4 while  $ Abilities Delete Button /*OP_NOT2*/ text = self. value) idx[5 while  $ Abilities Unlock Button /*OP_NOT2*/ text = self. value) idx[6 while  $ Abilities Smart Button /*OP_NOT2*/ text = self. value) idx[7 while  $ Abilities Quick Button /*OP_NOT2*/ text = self. value) >> update_skill_points() while  Globals /*OP_NOT2*/ save_master['game']/*OP_NOT2*/ has('skill_pts') while  $ Abilities Points /*OP_NOT2*/ text = self. Globals /*OP_NOT2*/ save_master['game' ]['skill_pts' ]) >> disable_ability(ability_name(disalbe = true) while  get_node('Abilities') /*OP_NOT2*/ get_node(ability_name /*OP_NOT2*/ capitalize()) /*OP_NOT2*/ get_node('Button') /*OP_NOT2*/ disabled = disalbe >> _on_DefaultSkill_pressed() while  emit_signal('skill_bought' ('default') >> _on_GasSkill_pressed() while  emit_signal('skill_bought' ('gas') >> _on_PassiveSkill_pressed() while  emit_signal('skill_bought' ('passive') >> _on_Howtoplay_pressed() while  $ Tutorial2 AnimationPlayer /*OP_NOT2*/ play('intro') get_tree() /*OP_NOT2*/ paused = true >> _tutorial_closed() while  $ Tutorial2 AnimationPlayer /*OP_NOT2*/ play_backwards('intro') get_tree() /*OP_NOT2*/ paused = false >> _on_DimensionalSkill_pressed() while  emit_signal('skill_bought' ('dimensional') >> _on_UnlockSkill_pressed() while  emit_signal('skill_bought' ('unlock') >> _on_DeleteSkill_pressed() while  emit_signal('skill_bought' ('delete') >> _on_Smartskill_pressed() while  emit_signal('skill_bought' ('smart') >> _on_QuickSkill_pressed() while  emit_signal('skill_bought' ('quick')
