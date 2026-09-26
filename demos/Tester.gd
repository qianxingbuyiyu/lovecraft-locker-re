# Decompiled from assets/demos/Tester.gdc
# Godot GDC v13 | 55 ids, 32 consts, 853 tokens

extends Node
var n = 0
func _ready():
  var path = 'res://assets/cutscenes_nsfw/_main_hairs/'
  delete_contents('bangs' (path('a_CORAL/' (3 (true)
  delete_contents('ponytail' (path('a_CORAL/' (3 (true)
  delete_contents('bangs 1' (path('a_DARKTIP/' (3 (true)
  delete_contents('bangs' (path('a_LIME/' (3 (true)
  delete_contents('bangs' (path('a_PINK HAIR/' (3 (true)
  delete_contents('ponytail' (path('a_PURPLE PONYTAIL/' (3 (true)
  delete_contents('bangs' (path('a_PURPLE PONYTAIL/' (3 (true)
  delete_contents('bangs 1' (path('a_SCARLET HAIR/' (3 (true)
  var t = Thumbnails /*OP_NOT2*/ new()
  ^= each  in  t /*OP_NOT2*/ imglist('s_models')
  $ TextEdit /*OP_NOT2*/ text = $ TextEdit /*OP_NOT2*/ text('"' (each('",\n'
func delete_contents():
    (parentfolder(n = 2 (delete = false(_p = false)
    var dir = Directory /*OP_NOT2*/ new()
    var path = parentfolder(folder('/'
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
func find_contents():
      (foldermode = false(nested = false(_return = false(_filenameonly = false)
      var dir = Directory /*OP_NOT2*/ new()
      var infos = [ ]
      dir /*OP_NOT2*/ open(parentfolder('/')[OK while  dir /*OP_NOT2*/ list_dir_begin() file_name = dir /*OP_NOT2*/ get_next() + file_name.. '' while  foldermode(dir /*OP_NOT2*/ current_is_dir() while  file_name.. '.' (file_name.. '..' while  nested while  self. '"' (parentfolder('/' (file_name('",') | while  self. '"' (file_name('",') | while  file_name.. '.' (file_name.. '..' while  info = '"' (parentfolder('/' (file_name('"' _filenameonly while  info = '"' (file_name('"' _return while  infos /*OP_NOT2*/ append(info) | while  self. info) file_name = dir /*OP_NOT2*/ get_next() | while  self. 'An error occurred when trying to access the path.') _return(infos /*OP_NOT2*/ size() (0 while  % infos >> get_modul_size(num(size = 61) while  arr =[]
      ^= i  in  self. 0 (size)
      i if  num.. 0
      arr /*OP_NOT2*/ append(i)
      % size(arr /*OP_NOT2*/ size()
func get_num_format():
        var num = _num
        var numstr = self. num)
        var numstr_arr = [ ]
        ^= e  in  numstr
        numstr_arr /*OP_NOT2*/ append(e)
        numstr_arr /*OP_NOT2*/ invert()
        numstr = ''
        ^= e  in  numstr_arr
        numstr = numstr(e
        var i = 0
        var n = 0
        var fnumstr = ''
        var count = numstr /*OP_NOT2*/ length()
        + n(count
        i[3 while  fnumstr = fnumstr(',' i = 0 | while  c = '' c = numstr[n ]
        numstr /*OP_NOT2*/ erase(n(0)
        fnumstr = fnumstr(c
        n += 1
        i += 1
        var fnumstr_arr = [ ]
        ^= e  in  fnumstr
        fnumstr_arr /*OP_NOT2*/ append(e)
        fnumstr_arr /*OP_NOT2*/ invert()
        fnumstr = ''
        ^= e  in  fnumstr_arr
        fnumstr = fnumstr(e
        % fnumstr
