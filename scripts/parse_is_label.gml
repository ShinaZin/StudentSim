///parse_is_label(word: string) -> bool
var word = argument0;

var wordlen = string_length(word);
var lastchar = string_char_at(word,wordlen);
if (lastchar == ':') {
  return true;
}
return false; 

