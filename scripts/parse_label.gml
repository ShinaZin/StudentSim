///parse_label(words: ds_list) -> label: string
var words = argument0;
var res="";
for (var i=0; i<ds_list_size(words); i++)
{
    var word = ds_list_find_value(words,i);
    var wordlen = string_length(word);
    var lastchar = string_char_at(word,wordlen);
    if (lastchar == ':') {
      res = string_delete(word,wordlen,1);
      res = string_upper(res);
      return res;
    }
};
res = "";
return res; 

