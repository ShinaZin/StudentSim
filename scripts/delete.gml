/*
 delete([y1,x1,y2,x2])
 Deletes the text in the given range.
 If no arguments are included, this deletes the selected text.
 A reversed range will be swapped before deleting.

 Some functions/variables that may be useful for determining arguments:
 * 0 = first line / first character
 * lines - 1 = last line
 * string_length(N) = length of line N
 * py, px = the carot's y and x position (respectively)
 * sy, sx = the selection's y and x position (respectively)
*/
var x1,x2,y1,y2,m;
if (argument0 = 0 && argument1 = 0 && argument2 = 0 && argument3 = 0) {
 x1 = px
 x2 = sx
 y1 = py
 y2 = sy
} else {
 y1 = argument0
 x1 = argument1
 y2 = argument2
 x2 = argument3
}
if ((y2 < y1) || (y2 = y1 && x2 < x1)) {
 yy = y2
 y2 = y1
 y1 = yy
 yy = x2
 x2 = x1
 x1 = yy
}

if (y1 = y2) {
 ds_list_replace(ll,y1,string_delete(ds_list_find_value(ll,y1),x1+1,x2-x1))
 px = x1
 py = y1
 sx = x1
 sy = y1
 ml = 0
 for (m = 0; m < ds_list_size(ll); m += 1) {//
  ml = max(string_length(ds_list_find_value(ll,m)),ml)
 }
 view_caret()
 return 0
}

ds_list_replace(ll,y1,string_copy(
 ds_list_find_value(ll,y1),1,x1)
 + string_copy(ds_list_find_value(ll,y2),x2+1,
 string_length(ds_list_find_value(ll,y2)) - x2))
repeat (y2-y1) {
 ds_list_delete(ll,y1+1)
}
px = x1
py = y1
sx = x1
sy = y1
ml = 0
for (m = 0; m < ds_list_size(ll); m += 1) {//
 ml = max(string_length(ds_list_find_value(ll,m)),ml)
}
view_caret()
