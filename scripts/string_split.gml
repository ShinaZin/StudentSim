/// string_split(:string, delimiter:string, ?list<string>):list<string>
var str = argument[0], delims = argument[1], res;
if (argument_count >= 3) {
    res = argument[2];
    ds_list_clear(res);
} else res = ds_list_create();

str = string_replace_all(str,chr(10),"")// \n->''
var pos = string_pos_of_delim(str, delims);
var delimsLength = string_length(delims);
if (delimsLength) while (pos) {
    pos -= 1;
    var adding = string_copy(str, 1, pos);
    if (adding!=""){
      ds_list_add(res, adding);
    }
    str = string_delete(str, 1, pos + 1 );
    pos = string_pos_of_delim(str, delims);
}
if (str!=""){
  ds_list_add(res, str);
}
return res;
