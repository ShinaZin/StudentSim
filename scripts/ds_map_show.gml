///ds_map_show(id: ds_map)
var map_id=argument0;
var count=ds_map_size(map_id);
var key=ds_map_find_first(map_id);
for (var i=0;i<count;i++){
  show_debug_message('['+string(key)+']: '+string(ds_map_find_value(map_id,key)));
  key = ds_map_find_next(map_id,key);
}
