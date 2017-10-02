///ds_list_to_string(id:ds_list)
var list_id = argument0;
var count = ds_list_size(list_id);
var res = "";
for (var i=0;i<count;i++){
  res += string( ds_list_find_value(list_id,i) );
}
