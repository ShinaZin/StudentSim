///parse_operand(words: ds_list)->operand: string
var words = argument0;
if (ds_list_size(words) == 2){ //if CMD op || label: CMD
  var label = ds_list_find_value(words,0);
  if (string_pos(":", label) == 0) {
    var op = ds_list_find_value(words,1); //if CMD op
  }
  else
    var op = ""; //if label: CMD
  op = string_upper(op);
  return op;
}
if (ds_list_size(words) == 3){ //if label: CMD op
  var op = ds_list_find_value(words,2);
  op = string_upper(op);
  return op;
}
// throw_error();
return ""; 

