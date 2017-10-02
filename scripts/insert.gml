/*
 insert(text,y,x[,update])
 Inserts the given text into the given position.
 If there are newline characters, they are converted and treated.
 For overwrite functionality, consider using delete() first.
 If update is true, the carot position will be updated

 Some functions/variables that may be useful for determining position:
 * 0 = first line / first character
 * lines - 1 = last line (e.g. append)
 * string_length(N) = length of line N (e.g. append)
 * py, px = the carot's y and x position (respectively)
 * sy, sx = the selection's y and x position (respectively)
*/
var nl,len,str;
str = string_replace_all(argument0,chr(13) + chr(10),chr(10))
str = string_replace_all(str,chr(13),chr(10))
nl = string_count(chr(10),str)
len = string_length(ds_list_find_value(ll,argument1)) - argument2

if nl = 0 {
 var s1,s2;
 s1 = string_copy(ds_list_find_value(ll,argument1),1,argument2)
 s2 = string_copy(ds_list_find_value(ll,argument1),argument2 + 1,len)
 ds_list_replace(ll,argument1,s1 + str + s2)
 if (argument3) {
  px += string_length(str)
  sx = px
 }
 ml = max(ml,string_length(s1 + str + s2))
 view_caret()
 return 0
}

var l, pos, ts;

split = ds_list_find_value(ll,argument1)
before = string_copy(split,1,argument2)
after = string_copy(split,argument2 + 1,len)
pos = string_pos(chr(10),str) - 1
ts = before + string_copy(str,1,pos)
ds_list_replace(ll,argument1,ts)
ml = max(ml,string_length(ts))
//ds_list_insert(ll,argument1 + 1,after)
str = string_delete(str,1,pos + 1)
for (l = argument1 + 1; l < argument1 + nl; l += 1) {
 pos = string_pos(chr(10),str) - 1
 ts = string_copy(str,1,pos)
 ds_list_insert(ll,l,ts)
 ml = max(ml,string_length(ts))
 str = string_delete(str,1,pos + 1)
}
if (argument3) {
 py += nl
 sy = py
 px = string_length(str)
 sx = px
}
//str += ds_list_find_value(ll,argument1 + nl)
ts = str + after
ds_list_insert(ll,argument1 + nl,ts)
ml = max(ml,string_length(ts))
view_caret()
