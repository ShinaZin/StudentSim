if (sy = py && sx = px) return 0;
var xmin, xmax, ymin, ymax;
x1 = x + 1
x2 = x + w*tw
y1 = y + 2
y2 = y + h*th

if (sy < py) {
 draw_rectangle(
  min(x2,max(x1,x1+(sx-left)*tw-tw/3)),
  min(y2,max(y1+(sy-top)*th,y1)),x2,
  min(y2,max(y1,y1+(sy-top+1)*th)),false)
 draw_rectangle(x1,
  min(y2,max(y1,y1+(sy-top+1)*th)),x2,
  min(y2,max(y1,y1+(py-top)*th)),false)
 draw_rectangle(x1,
  min(y2,max(y1,y1+(py-top)*th)),
  min(x2,max(x1,x1+(px-left)*tw-tw/3)),
  min(y2,max(y1,y1+(py-top+1)*th)),false)
 return 0
}
if (sy > py) {
 draw_rectangle(
  min(x2,max(x1,x1+(px-left)*tw-tw/3)),
  min(y2,max(y1,y1+(py-top)*th)),x2,
  min(y2,max(y1,y1+(py-top+1)*th)),false)
 draw_rectangle(x1,
  min(y2,max(y1,y1+(py-top+1)*th)),x2,
  min(y2,max(y1,y1+(sy-top)*th)),false)
 draw_rectangle(x1,
  min(y2,max(y1,y1+(sy-top)*th)),
  min(x2,max(x1,x1+(sx-left)*tw-tw/3)),
  min(y2,max(y1,y1+(sy-top+1)*th)),false)
 return 0
}
if (sx < px) {
 draw_rectangle(
  min(x2,max(x1,x1+(sx-left)*tw-tw/3)),
  min(y2,max(y1,y1+(py-top)*th)),
  min(x2,max(x1,x1+(px-left)*tw-tw/3)),
  min(y2,max(y1,y1+(py-top+1)*th)),false)
 return 0
}
//sx > px
draw_rectangle(
 min(x2,max(x1,x1+(px-left)*tw-tw/3)),
 min(y2,max(y1,y1+(py-top)*th)),
 min(x2,max(x1,x1+(sx-left)*tw-tw/3)),
 min(y2,max(y1,y1+(py-top+1)*th)),false)
