///ds_list_to_queue(id:ds_list): ds_queue
var list_id = argument0;
var count = ds_list_size(list_id);
var res = ds_queue_create();

for (var i=0;i<count;i++){
  ds_queue_enqueue(res, ds_list_find_value(list_id,i) );
}
return res;
