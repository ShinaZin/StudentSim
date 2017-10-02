// view_caret()
if (top > py) top = py
if (top <= py - h) top = py - h + 1
if (left > px) left = px
if (left <= px - w) left = px - w + 1
top = max(0,min(top,ds_list_size(ll) - h))
left = max(0,min(left,ml + 1))
