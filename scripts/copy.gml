/*
 copy([y1,x1,y2,x2])
 Returns the text in the given range.
 If no arguments are included, this returns the selected text.
 A reversed range will be swapped before returning.

 Some functions/variables that may be useful for determining arguments:
 * 0 = first line / first character
 * lines - 1 = last line
 * string_length(N) = length of line N
 * py, px = the carot's y and x position (respectively)
 * sy, sx = the selection's y and x position (respectively)
*/
var x1,x2,y1,y2,yy,s;
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
 return string_copy(ds_list_find_value(ll,y1),x1+1,x2-x1)
}

s = string_copy(ds_list_find_value(ll,y1),x1+1,string_length(ds_list_find_value(ll,y1)) - x1)
for (yy = y1 + 1; yy < y2; yy += 1)
 s += chr(13) + chr(10) + ds_list_find_value(ll,yy)
return s + chr(13) + chr(10) + string_copy(ds_list_find_value(ll,y2),1,x2)
