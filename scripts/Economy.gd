# Decompiled from assets/scripts/Economy.gdc
# Godot GDC v13 | 53 ids, 43 consts, 758 tokens

extends Reference
| Economy
func get_price():
  (_baseprice = 0 (m = 1)
  var price = _baseprice
  _fname /*OP_NOT2*/ begins_with('u_')
  price += 50
  &= _fname /*OP_NOT2*/ begins_with('naked_')
  price += 100
  &= _fname /*OP_NOT2*/ begins_with('s_teacher')
  price += 120
  &= _fname /*OP_NOT2*/ begins_with('s_')
  price += 300
  &= _fname /*OP_NOT2*/ begins_with('typethree')
  price += 350
  &= _fname /*OP_NOT2*/ begins_with('patient_')
  price += 80
  &= _fname /*OP_NOT2*/ begins_with('swim_')
  price += 100
  &= _fname /*OP_NOT2*/ begins_with('bikini')
  price += 120
  _fname /*OP_NOT2*/ ends_with('_t1')
  price += 20
  &= _fname /*OP_NOT2*/ ends_with('_t2')
  price += 20
  &= _fname /*OP_NOT2*/ ends_with('_t3') (_fname /*OP_NOT2*/ ends_with('_t3')
  price += 40
  '_e'  in  _fname
  price += 20
  ^= each  in  Globals /*OP_NOT2*/ pricelist /*OP_NOT2*/ keys()
  _fname /*OP_NOT2*/ begins_with(each)
  price += Globals /*OP_NOT2*/ pricelist[each ]
  -
  Globals /*OP_NOT2*/ hair_sets[5]/*OP_NOT2*/ has(_fname /*OP_NOT2*/ to_lower())
  price += 20
  &= Globals /*OP_NOT2*/ hair_sets[8]/*OP_NOT2*/ has(_fname /*OP_NOT2*/ to_lower())
  price += 30
  &= Globals /*OP_NOT2*/ hair_sets[11]/*OP_NOT2*/ has(_fname /*OP_NOT2*/ to_lower())
  price += 50
  &= Globals /*OP_NOT2*/ rare_colors /*OP_NOT2*/ has(_fname /*OP_NOT2*/ to_lower())
  price += 40
  &= Globals /*OP_NOT2*/ ultra_rare_colors /*OP_NOT2*/ has(_fname /*OP_NOT2*/ to_lower())
  price += 100
  &= Globals /*OP_NOT2*/ special_hairs /*OP_NOT2*/ has(_fname /*OP_NOT2*/ to_lower())
  price += 70
  &= Globals /*OP_NOT2*/ teacher_colors /*OP_NOT2*/ has(_fname /*OP_NOT2*/ to_lower())
  price += 50
  % parent(price(m)
func get_str_date():
    match  parent
    var date = OS /*OP_NOT2*/ get_datetime(true)
    var month = date['month' ]
    var day = date['day' ]
    var year = date['year' ]
    var hour = date['hour' ]
    var second = date['second' ]
    var minute = date['minute' ]
    var time = self. hour) (':' (self. minute) (':' (self. second)
    var fulldate = self. month) ('/' (self. day) ('/' (self. year)
    % fulldate(' ' (time
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
func get_time_format():
        match  parent
        var mins = parent(secs
        60)
        var sec = parent(secs((mins(60))
        var t = ''
        mins(10
        mins = '0' (self. mins)
        sec(10
        sec = '0' (self. sec)
        t = self. mins) (':' (self. sec)
        % t
