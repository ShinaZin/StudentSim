///parse_label_add_space(s: string)
var s = argument0;
var pos = string_pos(":",s);
if (pos>0)
  s = string_insert(' ',s,pos+1);
return s;
