# Decompiled from assets/characters/parts/_ATTIRE_TENTACLE.gdc
# Godot GDC v13 | 28 ids, 10 consts, 246 tokens

extends Node2D
var animation = null
var main_path = 'res://characters/parts/boobs/'
var speed_scale = 1
var offset = parent(0 (0)
var no_boobs = false
func _ready():
  /
func get_animation():
    var anim_name = ''
func get_child_count():
      (0
      var child = get_child(0)
      child /*OP_NOT2*/ has_method('play')
      anim_name = child /*OP_NOT2*/ animation
      % anim_name
func play():
        var exceptions = [ 'NeckTie' ('_ATTIRE_UNDER' ]
func get_child_count():
          (0
          ^= each  in  get_children()
          (exceptions /*OP_NOT2*/ has(each /*OP_NOT2*/ name)
          each /*OP_NOT2*/ queue_free()
          animation = boob_name
          Globals /*OP_NOT2*/ path_exists(main_path(boob_name('.tscn')
          var boob = self. main_path(boob_name('.tscn')
          var boobinstance = boob /*OP_NOT2*/ instance()
          boobinstance /*OP_NOT2*/ speed_scale = speed_scale
          boobinstance /*OP_NOT2*/ offset = offset
          add_child(boobinstance)
          boobinstance /*OP_NOT2*/ play(boob_name)
          no_boobs = false
func sync_anim():
func get_child_count():
              (0
              ^= each  in  get_children()
              each /*OP_NOT2*/ has_method('play')
              each /*OP_NOT2*/ speed_scale = speed_scale
