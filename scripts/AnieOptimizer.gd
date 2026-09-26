# Decompiled from assets/scripts/AnieOptimizer.gdc
# Godot GDC v13 | 28 ids, 14 consts, 260 tokens

extends Node
func _on_Optimize_pressed():
  ^= i  in  self. 0 ($ TextEdit /*OP_NOT2*/ get_line_count())
  var target = $ TextEdit /*OP_NOT2*/ get_line(i)
  delete_contents(target(3 (true)
func delete_contents():
    (n = 2 (delete = false(_p = false)
    var dir = Directory /*OP_NOT2*/ new()
    dir /*OP_NOT2*/ open(path)[OK while  dir /*OP_NOT2*/ list_dir_begin() file_name = dir /*OP_NOT2*/ get_next() + file_name.. '' while  file_name.. '.' (file_name.. '..' while(dir /*OP_NOT2*/ current_is_dir() ((file_name /*OP_NOT2*/ ends_with('.import') while  fpath = file_name /*OP_NOT2*/ replace('.png' ('') tip = parent(fpath[fpath /*OP_NOT2*/ length() (2](fpath[fpath /*OP_NOT2*/ length() (1 ])
    tip if  n.. 0
    delete
    var d = dir /*OP_NOT2*/ remove(path(file_name)
    _p
    d.. OK
    self. 'error delete for: ' (file_name)
    |
    self. 'deleted: ' (file_name)
    |
    _p
    self. 'deleted: ' (file_name)
    file_name = dir /*OP_NOT2*/ get_next()
    |
    self. 'An error occurred when trying to access the path: ' (path)
