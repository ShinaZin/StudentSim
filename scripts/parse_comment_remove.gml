///parse_comment_remove(s: string)
var s = argument0;
var slen = string_length(s);
var pos = string_pos("//",s);
if (pos>0)
  s = string_delete(s,pos,slen-pos+1);
  
var slen = string_length(s);
var pos = string_pos(";",s);
if (pos>0)
  s = string_delete(s,pos,slen-pos+1);
return s;
