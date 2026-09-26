# Decompiled from assets/scripts/Globals.gdc
# Godot GDC v13 | 184 ids, 240 consts, 3096 tokens

extends Node
var cursor = self. 'res://assets/ui/cursor.png')
/ vanish = != ('res://scenes/Vanish.tscn')
/ question = != ('res://characters/QuestionEffect.tscn')
/*OP_BIT_OR_INT*/ path_menuscene = 'res://scenes/MainMenu.tscn'
/*OP_BIT_OR_INT*/ path_nurseroom = 'res://scenes/NurseRoom.tscn'
/*OP_BIT_OR_INT*/ path_gympool = 'res://scenes/GymPool.tscn'
/*OP_BIT_OR_INT*/ path_hallway1 = 'res://scenes/Hallway.tscn'
/*OP_BIT_OR_INT*/ path_faculty = 'res://scenes/FacultyRoom.tscn'
/*OP_BIT_OR_INT*/ path_areaselect = 'res://scenes/SchoolAreaManager.tscn'
/*OP_BIT_OR_INT*/ path_cutscene1 = 'res://scenes/Cutscene_Main1.tscn'
/*OP_BIT_OR_INT*/ path_fapmode = 'res://scenes/FapModeV2.tscn'
/*OP_BIT_OR_INT*/ path_fapmodev1 = 'res://scenes/FapMode.tscn'
/*OP_BIT_OR_INT*/ heart = '[img]res://assets/ui/heart_emoji.png[/img]'
/*OP_BIT_OR_INT*/ heart_big = '[img]res://assets/ui/heart_emoji_big.png[/img]'
var loaded_paths = - *
var base_patreon_link = 'https://www.patreon.com/strange_girl'
var base_itch_link = 'https://strange-girl-studios.itch.io/'
var base_ss_link = 'https://subscribestar.adult/strange-girl'
var patreon_link = null
var itch_link = null
var ss_link = null
var base_hr_link = 'https://strange-girl-studios.itch.io/horny-recruiter'
var hr_link = null
var utm_source = 'game'
var utm_medium = 'none'
var utm_campaign = 'mainmenu'
var utm_content = 'lovecraft_locker'
var utm_link = null
var girls_found = 0
var characters = -
'PLAYER'
'Shiolp' (
'CHAR_1'
'Tamara' (
'CHAR_2'
'Melissa' (
'CHAR_3'
'Eila' (
*
var hair_sets = -
5
[ 'blonde' ('choco' ('white'](
8
[ 'white2' ('shortbrown' ('copper'](
11
[ 'longblack' ('pink' ('peach']*
var demo_hairs = [ 'yellow' ('black' ('brown' ('lightbrown' ]
var hair_colors = [ 'yellow' ('black' ('brown' ('lightbrown' ('blondecurly' (
'blue' ('brownbun' ('brownpony' ('blonde' ('choco' ('white' (
'white2' ('shortbrown' ('copper' ('darkpony' ('lime' ('amethyst' ]
var rare_colors = [ 'magentabun' ('blueyellow' ('bluecurly' ('green' (
'swordblue' ('longblack' ('pink' ('peach' ('scarlet' ('rose' ]
var ultra_rare_colors = [ 'swordredgreen' ('coral' ('rainbow' ]
var teacher_colors = [ 'teacher1' ]
var special_hairs = [ 'assassin' ('dragonmaid' ('demonmaid' ('archwizard' ('wolfgoddess' (
'guard' ('nurse' ('esper' ('demonqueen' ('disasterdemon' ('hybrid' ('darkangel' (
'instructor' ('kunoichi' ('magician' ('slimegirl' ('executioner' (
'teachertwo' ('teacherthree' ('teacherfour' ('teacherfive' ('teachersix' ('teacherseven' (
'swordmage' ('knowledgeangel' ('blooddevil' (
]
var back_hairs = [ 'blue' ('black' ('brown' ('lightbrown' ('peach' ('pink' ('rainbow' (
'white' ('longblack' ('copper' ('blonde' ('demonmaid' ('archwizard' (
'blondecurly' ('bluecurly' ('blueyellow' ('brownbun' ('brownpony' ('magentabun' (
'wolfgoddess' ('guard' ('nurse' ('esper' ('demonqueen' ('disasterdemon' ('choco' (
'hybrid' ('darkangel' ('instructor' ('kunoichi' ('magician' ('slimegirl' (
'executioner' ('swordmage' ('swordblue' ('swordredgreen' (
'darkpony' ('scarlet' ('rose' ('lime' ('coral' ('amethyst' (
'teacherfour' ('teacherfive' ('knowledgeangel' ('blooddevil' ]
var bigboobs = [ 'longblack' ('rainbow' ('swordblue' ('swordredgreen' (
'darkpony' ('scarlet' ('rose' ('lime' ('coral' ('amethyst' ]
var eye_colors = -
'black'
[ 'shortbrown' ('copper' ('choco' ('longblack' ('amethyst' ('teachertwo'](
'blue'
[ 'blonde' ('peach' ('blue' ('executioner' ('swordblue' ('darkpony' ('rose'](
'brown'
[ 'black' ('brown' ('pink' ('teacher1' ('nurse' ('brownbun' ('brownpony' ('swordmage'](
'white'
[ 'white' ('white2' ('magician' ('blueyellow' ('bluecurly' ('scarlet' ('teacherfour'](
'green'
[ 'green' ('guard' ('blondecurly' ('lime' ('teacherseven'](
'yellow'
[ 'yellow' ('lightbrown' ('slimegirl' ('teacherfive'](
'rainbow'
[ 'rainbow'](
'assassin'
[ 'assassin' ('magentabun'](
'dragonmaid'
[ 'dragonmaid'](
'demonmaid'
[ 'demonmaid' ('coral'](
'archwizard'
[ 'archwizard' ('instructor' ('swordredgreen' ('teacherthree'](
'wolfgoddess'
[ 'wolfgoddess'](
'esper'
[ 'esper' ('teachersix'](
'demonqueen'
[ 'demonqueen'](
'disasterdemon'
[ 'disasterdemon'](
'hybrid'
[ 'hybrid'](
'darkangel'
[ 'darkangel'](
'kunoichi'
[ 'kunoichi'](
'knowledgeangel'
[ 'knowledgeangel'](
'blooddevil'
[ 'blooddevil' ]
*
var type2 = [ ]
var type3 = [ 'ModelTeachertwo5' ]
var four_models = [
'dragonmaid' ('archwizard' ('wolfgoddess' ('guard' ('nurse' (
'esper' ('demonqueen' ('disasterdemon' ('hybrid' ('darkangel' ('instructor' (
'kunoichi' ('magician' ('slimegirl' ('executioner' ('swordmage' (
'knowledgeangel' ('blooddevil' (
'teachertwo' ('teacherthree' ('teacherfour' ('teacherfive' ('teachersix'
]
var unreleased_chars = [ ]
var dimensional_chars = [ 'assassin' ('dragonmaid' ('demonmaid' ('archwizard' (
'wolfgoddess' ('esper' ('demonqueen' ('disasterdemon' ('hybrid' ('darkangel' (
'kunoichi' ('slimegirl' ('executioner' ('swordmage' ('knowledgeangel' (
'blooddevil' ]
var dimensional_chars_public = [ 'assassin' ('dragonmaid' ('demonmaid' ('archwizard' ]
var dimensional_chars_public_ex = [ 'assassin' ('dragonmaid' ('demonmaid' ('archwizard' (
'wolfgoddess' ('esper' ('demonqueen' ('disasterdemon' ('hybrid' ('darkangel' (]
var nondimensionals = [
'Guard' ('Teacher1' ('Nurse' ('Instructor' ('Magician' (
'Teachertwo' ('Teacherthree' ('Teacherfour' ('Teacherfive' ('Teachersix' ('Teacherseven'
]
var special_chars = [ 'Teacher1' ('Guard' (
'Dragonmaid' ('Assassin' ('Demonmaid' ('Archwizard' ('Wolfgoddess' ('Nurse' ('Esper' (
'Demonqueen' ('Disasterdemon' ('Hybrid' ('Darkangel' ('Instructor' ('Kunoichi' ('Magician' (
'Slimegirl' ('Executioner' ('Swordmage' ('Knowledgeangel' ('Blooddevil' (
'Teachertwo' ('Teacherthree' ('Teacherfour' ('Teacherfive' ('Teachersix' ('Teacherseven' ]
var nonexclusive = [
'Guard' ('Teacher1' ('Nurse' ('Instructor' (
'Magician' (
'Assassin' ('Dragonmaid' (
'Demonmaid' ('Archwizard' ('Wolfgoddess' (
'Esper' (
'Teachertwo' ('Teacherthree' ('Teacherfour' ('Teacherfive' ('Teachersix' (
'Teacherseven'
]
var pricelist = -
'ModelGirlB'
20 ('ModelGirlC'
40 ('ModelGirlD'
60 ('ModelGirlE'
80 (
'ModelGirlF'
100 ('ModelGirlG'
120 ('ModelTeacher1'
70 ('ModelGuard'
80 (
'ModelNurse'
100 ('ModelAssassin'
150 ('ModelDragonmaid'
200 ('ModelDemonmaid'
200 (
'ModelArchwizard'
200 ('ModelWolfgoddess'
200 ('ModelEsper'
230 ('ModelDemonqueen'
250 (
'ModelDisasterdemon'
300 ('ModelHybrid'
300 ('ModelDarkangel'
300 ('ModelMagician'
300 (
'ModelInstructor'
400 ('ModelSlimegirl'
300 ('ModelExecutioner'
300 (
'ModelSwordmage'
300 ('ModelKnowledgeangel'
320 ('ModelTeacher'
250 (
'Model2Teacher'
500 ('ModelBlooddevil'
320 ('Model2Blooddevil'
600 (
*
var duos_model2 = -
'Model2Teacherseven1'
'Teachertwo' (
'Model2Teacherseven2'
'Teacherthree' (
'Model2Teacherseven3'
'Teacherfour' (
'Model2Teacherseven4'
'Teacherfive' (
'Model2Teacherseven5'
'Teachersix' (
'Model2Teacherseven6'
'Blooddevil' (
*
var duo_teachers = [ 'teachertwo' ('teacherthree' ('teacherfour' ('teacherfive' ('teachersix' (
'blooddevil' ]
var day = 1
var game_level = 0
var demo_version_max_day = 5
var day_unlocks = -
'teacher'
5
*
var alerts_current = 0
var alerts_maximum = 50
var alerts_maximum_og = 50
var lust = 0
var lust_max = 10
var times_completed = 0
var times_lost = 0
var unique_girls_seen = 0
var ab_costs = - 'default'
2 ('passive'
3 ('gas'
5 ('dimensional'
5 (
'delete'
0 ('unlock'
1 ('smart'
5 ('quick'
5 (
*
var fap_ref = - *
var demo_items = [ 'default_small' ('default_small_e' ('default_big' ('default_big_e' ('Black' ('Brown' ('Yellow' ('Lightbrown' ]
var currency = 0
var purchases = [ ]
var version = ''
var patreon_pw = ''
var save_name = 'save'
var old_save_name = 'save_v1_1_83'
var save_master = - *
var load_master = - *
var sound_master = - *
var patreon_seen_once = false
var patreon_exclusive = false
var exclusive_content = false
var demo_version = false
var new_game_pressed = false
var early_access = false
var playtesting_version = false
var no_threads = false
var custom_version = ''
var ads_menu_disabled = false
var sfx_percentage = 0
var sfx_moans_percentage = 0
var bgmusic_percentage = 0
var fullscreen = false
var save_editor_unlocked = false
var save_notifs = false
var touch_controls = false
var color_lime = '7FFF8E'
var color_red = 'FF7F7F'
var color_white = 'FFFFFFF'
var color_grey = '4d4d4d'
var color_pink = 'FA729C'
func _ready():
  OS /*OP_NOT2*/ window_fullscreen = fullscreen
  Input /*OP_NOT2*/ set_custom_mouse_cursor(cursor)
  update_links()
func update_links():
    utm_medium = OS /*OP_NOT2*/ get_name()
    utm_link = '?utm_source=' (utm_source('&utm_medium=' (utm_medium('&utm_campaign=' (utm_campaign('&utm_content=' (utm_content
    patreon_link = base_patreon_link(utm_link
    itch_link = base_itch_link(utm_link
    ss_link = base_ss_link(utm_link
    hr_link = base_hr_link(utm_link
func demo_updates():
      demo_version
      /
func new_game():
        (hard_reset = false)
        var new_save = -
        'day'
        _day(
        'game_level'
        0 (
        'times_completed'
        0 (
        'times_lost'
        0 (
        'currency'
        currency(
        'purchases'
        purchases(
        'alerts_current'
        0 (
        'alerts_maximum'
        50 (
        'lust'
        0 (
        'lust_max'
        10 (
        'game'
        - *
        *
        hard_reset
        new_save['currency' ] = 0
        new_save['purchases' ] = [ ]
        save_game(new_save)
func load_game():
          var _save = load_database(_save_name)
          _save

        save_master['game_level' ] = _save['game_level' ]
        save_master['times_completed' ] = _save['times_completed' ]
        save_master['times_lost' ] = _save['times_lost' ]
        save_master['currency' ] = _save['currency' ]
        save_master['purchases' ] = _save['purchases' ]
        save_master['day' ] = _save['day' ]
        save_master['alerts_current' ] = _save['alerts_current' ]
        save_master['alerts_maximum' ] = _save['alerts_maximum' ]
        save_master['lust' ] = _save['lust' ]
        save_master['lust_max' ] = _save['lust_max' ]
        save_master['game' ] = _save['game' ]
        _save /*OP_NOT2*/ has('areas')
        save_master['areas' ] = _save['areas' ]
        _save /*OP_NOT2*/ has('sfx_percentage')
        save_master['sfx_percentage' ] = _save['sfx_percentage' ]
        |
        save_master['sfx_percentage' ] = 0
        _save /*OP_NOT2*/ has('sfx_moans_percentage')
        save_master['sfx_moans_percentage' ] = _save['sfx_moans_percentage' ]
        |
        save_master['sfx_moans_percentage' ] = 0
        _save /*OP_NOT2*/ has('bgmusic_percentage')
        save_master['bgmusic_percentage' ] = _save['bgmusic_percentage' ]
        |
        save_master['bgmusic_percentage' ] = 0
        _save /*OP_NOT2*/ has('fullscreen')
        save_master['fullscreen' ] = _save['fullscreen' ]
        |
        save_master['fullscreen' ] = false
        _save /*OP_NOT2*/ has('save_editor_unlocked')
        save_master['save_editor_unlocked' ] = _save['save_editor_unlocked' ]
        |
        save_master['save_editor_unlocked' ] = false
        _save /*OP_NOT2*/ has('save_notifs')
        save_master['save_notifs' ] = _save['save_notifs' ]
        |
        save_master['save_notifs' ] = false
        _save /*OP_NOT2*/ has('touch_controls')
        save_master['touch_controls' ] = _save['touch_controls' ]
        |
        save_master['touch_controls' ] = false
        game_level = save_master['game_level' ]
        times_completed = save_master['times_completed' ]
        times_lost = save_master['times_lost' ]
        currency = save_master['currency' ]
        purchases = save_master['purchases' ]
        day = save_master['day' ]
        alerts_current = save_master['alerts_current' ]
        alerts_maximum = save_master['alerts_maximum' ]
        lust = save_master['lust' ]
        lust_max = save_master['lust_max' ]
        sfx_percentage = save_master['sfx_percentage' ]
        sfx_moans_percentage = save_master['sfx_moans_percentage' ]
        bgmusic_percentage = save_master['bgmusic_percentage' ]
        fullscreen = save_master['fullscreen' ]
        save_editor_unlocked = save_master['save_editor_unlocked' ]
        save_notifs = save_master['save_notifs' ]
        touch_controls = save_master['touch_controls' ]
        BackgroundLoad /*OP_NOT2*/ show_notif('[center]Game loaded!')
        % true
        |
        BackgroundLoad /*OP_NOT2*/ show_notif('[center]Game not loaded!')
        % false
func save_data():
          (value)
          save_master[data_name ] = value
          save_game(save_master)
func save_game():
            (_save_name = save_name)
            save_master['game_level' ] = game_level
            save_master['times_completed' ] = times_completed
            save_master['times_lost' ] = times_lost
            save_master['currency' ] = currency
            save_master['purchases' ] = purchases
            save_master['day' ] = day
            save_master['alerts_current' ] = alerts_current
            save_master['alerts_maximum' ] = alerts_maximum
            save_master['lust' ] = lust
            save_master['lust_max' ] = lust_max
            save_master['game' ] = _save['game' ]
            save_master['sfx_percentage' ] = sfx_percentage
            save_master['sfx_moans_percentage' ] = sfx_moans_percentage
            save_master['bgmusic_percentage' ] = bgmusic_percentage
            save_master['fullscreen' ] = fullscreen
            save_master['save_editor_unlocked' ] = save_editor_unlocked
            save_master['save_notifs' ] = save_notifs
            save_master['touch_controls' ] = touch_controls
func save_database():
              (_save)
              BackgroundLoad /*OP_NOT2*/ show_notif('[center]Game saved!')
              % true
              |
              BackgroundLoad /*OP_NOT2*/ show_notif('[center]Game not saved!')
              % false
func save_checkpoint():
                var checkpoint_savename = save_name('_cp'
func save_database():
                  (save_master)
                  BackgroundLoad /*OP_NOT2*/ show_notif('[center]New checkpoint!' (true)
                  |
                  BackgroundLoad /*OP_NOT2*/ show_notif('[center]Checkpoint failed!' (true)
func load_checkpoint():
                    var checkpoint_savename = save_name('_cp'
func load_game():
                      BackgroundLoad /*OP_NOT2*/ show_notif('[center]Checkpoint loaded!' (true)
                      |
                      BackgroundLoad /*OP_NOT2*/ show_notif('[center]Checkpoint failed!' (true)
                      save_game()
                      var mdef = 'user://'
func load_database():
                        (def = mdef)
                        var file = File /*OP_NOT2*/ new()
                        var err = file /*OP_NOT2*/ open(def(file_name('.dat' (file /*OP_NOT2*/ READ)
                        var content = null
                        err[OK while  content = file /*OP_NOT2*/ get_var() file /*OP_NOT2*/ close() % content >> save_database(file_name(what(def = mdef) while  is_ok = false file = File /*OP_NOT2*/ new() err = file /*OP_NOT2*/ open(def(file_name('.dat' (file /*OP_NOT2*/ WRITE) err[OK while  is_ok = true file /*OP_NOT2*/ store_var(what) file /*OP_NOT2*/ close() % is_ok >> get_save_path(checkpoint = false) match  parent while  checkpoint while  % mdef(save_name('checkpoint' ('.dat' | while  % mdef(save_name('.dat' >> get_sound_setting(soundnode(sfx = false) while(sound_master /*OP_NOT2*/ has(soundnode /*OP_NOT2*/ name) while  sound_master[soundnode /*OP_NOT2*/ name]= soundnode /*OP_NOT2*/ volume_db soundvalue = sfx_percentage(sfx while  soundvalue = bgmusic_percentage % soundvalue >> get_percentage(_min(_max(_val) while  % (parent(_val) (parent(_min)) (100 (parent(_max) (parent(_min)) >> get_percentage_reverse(percentage(_max(_min = 0) while  _min(0 while  _max -= _min % _max((percentage(0.01) (_min >> get_dir_files(path(full = false) while  dir = Directory /*OP_NOT2*/ new() files =[]
                        dir /*OP_NOT2*/ open(path)[OK while  dir /*OP_NOT2*/ list_dir_begin() file_name = dir /*OP_NOT2*/ get_next() + (file_name.. '') while(dir /*OP_NOT2*/ current_is_dir() while  files /*OP_NOT2*/ append(path(file_name) file_name = dir /*OP_NOT2*/ get_next() ^= each  in  files while  each /*OP_NOT2*/ ends_with('.import') while  files /*OP_NOT2*/ erase(each) % files >> load_scenes(folder = '') while  scenes = - * target_directory = 'res://' (folder target_paths = get_dir_files(target_directory(true) ^= each  in  target_paths while  target_name = each /*OP_NOT2*/ replace(target_directory('') /*OP_NOT2*/ replace('.tscn' ('') scenes[target_name]= self. each)
                        % scenes
func capitalize():
                          parent) match  parent
                          string[0 ] = string[0]/*OP_NOT2*/ to_upper()
                          % string
func path_exists():
                            var is_ok = false
                            var file = File /*OP_NOT2*/ new()
                            file /*OP_NOT2*/ file_exists(_path)
                            is_ok = true
                            % is_ok
