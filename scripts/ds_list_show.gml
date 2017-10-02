///ds_list_show(id:ds_list)
var list_id=argument0;
var count=ds_list_size(list_id);
for (var i=0;i<count;i++){
  show_debug_message('['+string(i)+']: '+ds_list_find_value(list_id,i));
}
