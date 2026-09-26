# Decompiled from assets/ui/Debug/Debug.gdc
# Godot GDC v13 | 33 ids, 20 consts, 391 tokens

extends CanvasLayer
/*OP_SHIFT_RIGHT_INT*/ (parent) left = true
func _ready():
  $ Labels /*OP_NOT2*/ hide()
func _process():
    performance_update()
func _input():
      Input /*OP_NOT2*/ is_action_just_pressed('debug2') (Globals /*OP_NOT2*/ playtesting_version
      $ Labels /*OP_NOT2*/ visible = ($ Labels /*OP_NOT2*/ visible
func performance_update():
        var p = $ Labels
        Performance
        var ref = - *
        ref['fps' ] = Performance /*OP_NOT2*/ get_monitor(Performance /*OP_NOT2*/ TIME_FPS)
        ref['video memory' ] = self. self. Performance /*OP_NOT2*/ get_monitor(Performance /*OP_NOT2*/ RENDER_VIDEO_MEM_USED) (1e-06 (0.01)) ('MiB'
        ref['texture memory' ] = self. self. Performance /*OP_NOT2*/ get_monitor(Performance /*OP_NOT2*/ RENDER_TEXTURE_MEM_USED) (1e-06 (0.01)) ('MiB'
        ref['objects' ] = Performance /*OP_NOT2*/ get_monitor(Performance /*OP_NOT2*/ OBJECT_COUNT)
        ref['nodes' ] = Performance /*OP_NOT2*/ get_monitor(Performance /*OP_NOT2*/ OBJECT_NODE_COUNT)
        ref['resources' ] = Performance /*OP_NOT2*/ get_monitor(Performance /*OP_NOT2*/ OBJECT_RESOURCE_COUNT)
        ref['orphaned nodes' ] = Performance /*OP_NOT2*/ get_monitor(Performance /*OP_NOT2*/ OBJECT_ORPHAN_NODE_COUNT)
        ref['static mem' ] = self. self. Performance /*OP_NOT2*/ get_monitor(Performance /*OP_NOT2*/ MEMORY_STATIC) (1e-06 (0.01)) ('MiB'
        ref['static mem max' ] = self. self. Performance /*OP_NOT2*/ get_monitor(Performance /*OP_NOT2*/ MEMORY_STATIC_MAX) (1e-06 (0.01)) ('MiB'
        ref['dynamic mem' ] = self. self. Performance /*OP_NOT2*/ get_monitor(Performance /*OP_NOT2*/ MEMORY_DYNAMIC) (1e-06 (0.01)) ('MiB'
        ref['dynamic mem max' ] = self. self. Performance /*OP_NOT2*/ get_monitor(Performance /*OP_NOT2*/ MEMORY_DYNAMIC_MAX) (1e-06 (0.01)) ('MiB'
        p /*OP_NOT2*/ text = ''
        ^= each  in  ref /*OP_NOT2*/ keys()
        var text = ref[each ]
        left
        p /*OP_NOT2*/ text = p /*OP_NOT2*/ text(each(' : ' (self. text) ('\n'
        |
        p /*OP_NOT2*/ text = p /*OP_NOT2*/ text(self. text) (' ' (each('\n'
