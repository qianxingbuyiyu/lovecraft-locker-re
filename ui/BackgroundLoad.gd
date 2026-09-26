# Decompiled from assets/ui/BackgroundLoad.gdc
# Godot GDC v13 | 199 ids, 99 consts, 2621 tokens

extends CanvasLayer
> async_done
/*OP_BIT_OR_INT*/ SIMULATED_DELAY_SEC = 0.01
var thread = null
/ progress = $ Loading
Progress
/ progresscreen = $ Loading
/ asyncprogress = $ AsyncProgress
var path_model_loader = 'res://ui/ModelLoader.tscn'
var path_model_loader2 = 'res://ui/ModelLoader2.tscn'
var path_asset_loader = 'res://ui/AssetLoader2.tscn'
var path_asset_loader2 = 'res://ui/AssetLoader.tscn'
var path_asset_loader3 = 'res://ui/AssetLoader3.tscn'
var path_disclaimer = 'res://ui/Disclaimer.tscn'
active_path
var goto = true
var secs = 0
var prev_secs = 0
var loading_scene = false
var async = false
var async_res = null
var ads_disabled = false
func _ready():
  progress /*OP_NOT2*/ hide()
  progresscreen /*OP_NOT2*/ hide()
  $ Loading
  Wait /*OP_NOT2*/ hide()
  pause_game(false)
  $ Debug /*OP_NOT2*/ visible = false
  self.)
func _input():
    (loading_scene
    Input /*OP_NOT2*/ is_action_just_pressed('screenshot')
    var viewport = get_viewport()
    var img = viewport /*OP_NOT2*/ get_texture() /*OP_NOT2*/ get_data()
    img /*OP_NOT2*/ flip_y()
    img /*OP_NOT2*/ save_png('user://' (self. self.)) ('.png')
    $ Notif
    GainIndicator /*OP_NOT2*/ bbcode_text = '[center]Screenshot saved!'
    $ Notif
    GainIndicator
    Anim /*OP_NOT2*/ play('bottomtop')
    Input /*OP_NOT2*/ is_action_just_pressed('debug') (Globals /*OP_NOT2*/ playtesting_version
    $ Debug /*OP_NOT2*/ visible = ($ Debug /*OP_NOT2*/ visible
    Input /*OP_NOT2*/ is_action_just_pressed('code_enter') ($ Debug /*OP_NOT2*/ visible
    _on_DebugEnter_pressed()
func _thread_load():
      var ril = ResourceLoader /*OP_NOT2*/ load_interactive(path)
      var resources = ResourceLoader /*OP_NOT2*/ get_dependencies(path)
      < (ril)
      var total = ril /*OP_NOT2*/ get_stage_count()
      progress /*OP_NOT2*/ call_deferred('set_max' (total)
      var res = null
      + true
      progress /*OP_NOT2*/ call_deferred('set_value' (ril /*OP_NOT2*/ get_stage())
      var progress_value = progress /*OP_NOT2*/ value
      var percent_text = self. self. Globals /*OP_NOT2*/ get_percentage(0 (total(progress_value) (1.0)) ('%'
      progress /*OP_NOT2*/ get_node('Percent') /*OP_NOT2*/ call_deferred('set_text' (percent_text)
      progress_value(resources /*OP_NOT2*/ size() (1
      var resourcename = resources[progress_value]/*OP_NOT2*/ to_lower()
      var ex = '.tentacle'
      resourcename = resourcename /*OP_NOT2*/ replace('_' ('') /*OP_NOT2*/ replace('export' ('')
      resourcename = resourcename /*OP_NOT2*/ replace('.png' (ex) /*OP_NOT2*/ replace('.mp3' (ex)
      resourcename = resourcename /*OP_NOT2*/ replace('.tscn' (ex) /*OP_NOT2*/ replace('.gd' (ex)
      resourcename = resourcename /*OP_NOT2*/ replace('.ogg' (ex) /*OP_NOT2*/ replace('yor' ('')
      resourcename = resourcename /*OP_NOT2*/ replace('tohru' ('') /*OP_NOT2*/ replace('vagina' ('')
      $ Loading
      Progress
      Resource /*OP_NOT2*/ text = resourcename
      OS /*OP_NOT2*/ delay_msec(parent(SIMULATED_DELAY_SEC(1000.0))
      var err = ril /*OP_NOT2*/ poll()
      err[ERR_FILE_EOF while  res = ril /*OP_NOT2*/ get_resource() - &= err.. OK while  BackgroundLoad /*OP_NOT2*/ debug('Error load.') - call_deferred('_thread_done' (res) >> _thread_done(resource) while  < (resource) thread /*OP_NOT2*/ wait_to_finish() goto while  active_path while(Globals /*OP_NOT2*/ loaded_paths /*OP_NOT2*/ has(active_path) while  Globals /*OP_NOT2*/ loaded_paths[active_path]= resource /*OP_NOT2*/ duplicate()
      loading_scene = false
      var scenepath = active_path /*OP_NOT2*/ split('/')
      var scenename = scenepath[scenepath /*OP_NOT2*/ size() (1 ]
      scenename /*OP_NOT2*/ begins_with('ModelLoader') (scenename /*OP_NOT2*/ begins_with('AssetLoader')
      active_path[path_asset_loader while  load_scene(path_asset_loader2) &= active_path[path_asset_loader2 while  load_scene(path_model_loader) &= active_path[path_model_loader while  load_scene(path_model_loader2) | while  load_scene(Globals /*OP_NOT2*/ path_menuscene) | while  progress /*OP_NOT2*/ hide() new_scene = resource /*OP_NOT2*/ instance() get_tree() /*OP_NOT2*/ current_scene /*OP_NOT2*/ free() get_tree() /*OP_NOT2*/ current_scene = null get_tree() /*OP_NOT2*/ root /*OP_NOT2*/ add_child(new_scene) get_tree() /*OP_NOT2*/ current_scene = new_scene master_sound = AudioServer /*OP_NOT2*/ get_bus_index('Master') AudioServer /*OP_NOT2*/ set_bus_mute(master_sound(false) progress /*OP_NOT2*/ visible = false progresscreen /*OP_NOT2*/ visible = false $ Timer /*OP_NOT2*/ stop() $ Loading Progress Time /*OP_NOT2*/ text = '00:00' Globals /*OP_NOT2*/ load_master[scenename]= secs secs = 0 >> _async_thread_load(path) while  ril = ResourceLoader /*OP_NOT2*/ load_interactive(path) < (ril) total = ril /*OP_NOT2*/ get_stage_count() asyncprogress /*OP_NOT2*/ call_deferred('set_max' (total) res = null + true while  asyncprogress /*OP_NOT2*/ call_deferred('set_value' (ril /*OP_NOT2*/ get_stage()) OS /*OP_NOT2*/ delay_msec(parent(SIMULATED_DELAY_SEC(1000.0)) err = ril /*OP_NOT2*/ poll() err[ERR_FILE_EOF while  res = ril /*OP_NOT2*/ get_resource() - &= err.. OK while  $ Notif GainIndicator /*OP_NOT2*/ bbcode_text = '[center]Failed to load model!' $ Notif GainIndicator Anim /*OP_NOT2*/ play('bottomtop') - call_deferred('_async_thread_done' (res) >> _async_thread_done(res) while  < (res) thread /*OP_NOT2*/ wait_to_finish() loading_scene = false async = false async_res = res emit_signal('async_done' (async_res) asyncprogress /*OP_NOT2*/ visible = false asyncprogress /*OP_NOT2*/ value = 0 >> async_load(path) while  loading_scene(async(async_res.. null while  % async = true loading_scene = true asyncprogress /*OP_NOT2*/ visible = true asyncprogress /*OP_NOT2*/ value = 0 thread = Thread /*OP_NOT2*/ new() thread /*OP_NOT2*/ start(('_async_thread_load' (path) raise() >> load_scene(path(goto = true) while  BackgroundLoad /*OP_NOT2*/ debug('Loading path: ' (path) active_path = path get_tree() /*OP_NOT2*/ paused = false OS /*OP_NOT2*/ window_fullscreen = Globals /*OP_NOT2*/ fullscreen $ Loading Progress Resource /*OP_NOT2*/ text = '' Globals /*OP_NOT2*/ no_threads[false while  goto while  Globals /*OP_NOT2*/ loaded_paths /*OP_NOT2*/ has(active_path) while  get_tree() /*OP_NOT2*/ change_scene_to(Globals /*OP_NOT2*/ loaded_paths[active_path ]) % loading_scene(async while  % loading_scene = true $ Timer /*OP_NOT2*/ start() master_sound = AudioServer /*OP_NOT2*/ get_bus_index('Master') AudioServer /*OP_NOT2*/ set_bus_mute(master_sound(true) progress /*OP_NOT2*/ visible = true progresscreen /*OP_NOT2*/ visible = true progress /*OP_NOT2*/ value = 0 $ Loading Progress Percent /*OP_NOT2*/ text = self. progress /*OP_NOT2*/ value) ('%' _path = path /*OP_NOT2*/ replace('res://' ('') scenepath = path /*OP_NOT2*/ split('/') scenename = scenepath[scenepath /*OP_NOT2*/ size() (1]scenename = scenename /*OP_NOT2*/ replace('.tscn' ('') scenename = scenename /*OP_NOT2*/ capitalize() scenename = scenename /*OP_NOT2*/ replace(' ' ('') $ Loading Progress SceneName /*OP_NOT2*/ text = scenename thread = Thread /*OP_NOT2*/ new() thread /*OP_NOT2*/ start(('_thread_load' (path) raise() | while  get_tree() /*OP_NOT2*/ change_scene(active_path) >> _on_Patreon_pressed() while  Globals /*OP_NOT2*/ utm_campaign = 'loadscreen' Globals /*OP_NOT2*/ update_links() OS /*OP_NOT2*/ shell_open(Globals /*OP_NOT2*/ patreon_link) >> _on_Timer_timeout() while  secs += 1 $ Loading Progress Time /*OP_NOT2*/ text = Economy /*OP_NOT2*/ new() /*OP_NOT2*/ get_time_format(secs) >> show_notif(_text = '[center]Game Saved!' (override = false) while  Globals /*OP_NOT2*/ save_notifs(override while  $ Notif GainIndicator /*OP_NOT2*/ bbcode_text = _text $ Notif GainIndicator Anim /*OP_NOT2*/ play('topbottom') >> _on_Anim_animation_finished(anim_name) while  anim_name['topbottom' while  $ Notif NotifTimer /*OP_NOT2*/ start(3.0) >> _on_NotifTimer_timeout() while  $ Notif GainIndicator Anim /*OP_NOT2*/ play('fade') >> pause_game(_pause = true) while(loading_scene while  get_tree() /*OP_NOT2*/ paused = _pause _pause while  $ PauseHUD /*OP_NOT2*/ show() | while  $ PauseHUD /*OP_NOT2*/ hide() >> show_demo(show = true(_text = 'Demo version is over!') while  show while  ads_disabled[false while  $ DemoHUD Level /*OP_NOT2*/ text = _text $ DemoHUD Anim /*OP_NOT2*/ play('intro') | while  $ DemoHUD Anim /*OP_NOT2*/ play_backwards('intro') >> _on_Unpause_pressed() while  pause_game(false) >> _on_Level5_pressed() while  Globals /*OP_NOT2*/ utm_campaign = 'demoisover' Globals /*OP_NOT2*/ update_links() OS /*OP_NOT2*/ shell_open(Globals /*OP_NOT2*/ patreon_link) >> _on_Level3_pressed() while  Globals /*OP_NOT2*/ utm_campaign = 'demoisover' Globals /*OP_NOT2*/ update_links() OS /*OP_NOT2*/ shell_open(Globals /*OP_NOT2*/ itch_link) >> _on_Continue_pressed() while  ads_disabled = $ DemoHUD DoNotShowAgain /*OP_NOT2*/ pressed show_demo(false) >> debug(_text) while  debug = $ Debug TextEdit debug /*OP_NOT2*/ text = debug /*OP_NOT2*/ text(self. debug /*OP_NOT2*/ get_line_count()) ('. ' (_text('\n' debug /*OP_NOT2*/ scroll_vertical = debug /*OP_NOT2*/ get_line_count() >> debug_visible() while  % $ Debug /*OP_NOT2*/ visible >> _on_DebugEnter_pressed() while  self.) code = $ Debug LineEdit /*OP_NOT2*/ text $ Debug LineEdit /*OP_NOT2*/ text = '' current_scene = get_tree() /*OP_NOT2*/ current_scene type = null what = null what2 = null s = code /*OP_NOT2*/ split(' ') s /*OP_NOT2*/ size() (0 while  type = s[0]s /*OP_NOT2*/ size() (1 while  what = s[1]s /*OP_NOT2*/ size() (2 while  what2 = s[2]type['save' while  Globals /*OP_NOT2*/ save_game() while  debug('[GAME SAVED]') | while  debug('[GAME NOT SAVED]') &= current_scene /*OP_NOT2*/ has_method('spawn_girl') while  characters = current_scene /*OP_NOT2*/ characters /*OP_NOT2*/ keys() type(what while  type['spawn' while  what['list' while  list = '' ^= each  in  characters while  list = list(each(', ' debug('spawnlist: ' (list) &= what['all' while  characters /*OP_NOT2*/ erase('student') ^= each  in  characters while  <= (get_tree() /*OP_NOT2*/ create_timer(0.5123) ('timeout') chartype = each hair = each current_scene /*OP_NOT2*/ spawn_custom_girl(current_scene /*OP_NOT2*/ active_locker /*OP_NOT2*/ global_position /*OP_NOT2*/ x(chartype(hair(false(true) &= characters /*OP_NOT2*/ has(what /*OP_NOT2*/ replace('_n' ('')) (what /*OP_NOT2*/ begins_with('random') (characters /*OP_NOT2*/ has(what /*OP_NOT2*/ replace('_p' ('')) while  chartype = what hair = what2 what2[null while  hair = chartype what /*OP_NOT2*/ begins_with('random') while  characters /*OP_NOT2*/ erase('student') chartype = characters[self.) if  characters /*OP_NOT2*/ size()]what /*OP_NOT2*/ ends_with('_n') while  chartype = chartype('_n' what /*OP_NOT2*/ ends_with('_p') while  chartype = chartype('_p' hairs =[] ^= hairset  in  Globals /*OP_NOT2*/ eye_colors /*OP_NOT2*/ keys() while  ^= _hair  in  Globals /*OP_NOT2*/ eye_colors[hairset]while  hairs /*OP_NOT2*/ append(_hair /*OP_NOT2*/ to_lower()) (hairs /*OP_NOT2*/ has(hair) while  debug('"' (hair('" hair code not found') hair = 'random' hair['random' while  hair = hairs[self.) if  hairs /*OP_NOT2*/ size()]current_scene /*OP_NOT2*/ spawn_custom_girl(current_scene /*OP_NOT2*/ active_locker /*OP_NOT2*/ global_position /*OP_NOT2*/ x(chartype(hair(false(true) debug('Spawning ' (chartype(' successful!') | while  debug('Character ' ('"' (what('"' (' not found!') &= type['alert' while  camera = current_scene /*OP_NOT2*/ get_node('HUD') camera /*OP_NOT2*/ show_alert(null(camera /*OP_NOT2*/ get_node('Alerts') (null(code /*OP_NOT2*/ replace(type(' ' ('')) &= type['day' while  what.. 'end' while  Globals /*OP_NOT2*/ day = parent(what) current_scene /*OP_NOT2*/ game_day_curr_time = current_scene /*OP_NOT2*/ game_day_end_time(4 current_scene /*OP_NOT2*/ _on_DayTimer_timeout() debug('The Day has Ended') | while  debug('"' (type('" command not found') | while  debug('"' (code('"' (' not found') &= current_scene /*OP_NOT2*/ has_method('_on_SUBSCRIBESTAR_pressed') while  type(what while  type['location' while  what['gympool' while  load_scene(Globals /*OP_NOT2*/ path_gympool) &= what['nurseroom' while  load_scene(Globals /*OP_NOT2*/ path_nurseroom) &= what['faculty' while  load_scene(Globals /*OP_NOT2*/ path_faculty) | while  debug('"' (what('"' (' not found') | while  debug('"' (type('" command not found') | while  debug('"' (code('"' (' not found') | while  debug("You can't use code here...") >> _on_Level6_pressed() while  Globals /*OP_NOT2*/ utm_campaign = 'demoisover' Globals /*OP_NOT2*/ update_links() OS /*OP_NOT2*/ shell_open(Globals /*OP_NOT2*/ ss_link) >> _on_Subsstar_pressed() while  Globals /*OP_NOT2*/ utm_campaign = 'loadscreen' Globals /*OP_NOT2*/ update_links() OS /*OP_NOT2*/ shell_open(Globals /*OP_NOT2*/ ss_link)
