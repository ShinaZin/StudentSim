///parse_command(words: ds_list)
var const_commands = "NOP ADD SUB INC DEC LOAD SAVE INP OUT JMP IFZ IFN HALT";
var words = argument0;
//find errors {
var words_count = ds_list_size(words);
if (words_count == 3){ //label: cmd op
  var word = ds_list_find_value(words,1); //0-label, 1-cmd, 2-operand
  if parse_is_command(word)==false
    throw_error("Unknown command '"+word+"'");    
}

if (words_count == 2){ //label: cmd | cmd op
  var word_first  = ds_list_find_value(words,0);
  var word_second = ds_list_find_value(words,1); 
  if parse_is_label(word_first) { //check 0-label, 1-cmd
    if parse_is_command(word_second)==false 
      throw_error("Unknown command '"+word_second+"'"); 
  } else { //check 0-cmd, 1-operand
    if parse_is_command(word_first)==false
      throw_error("Unknown command '"+word_first+"'"); 
  }
}
if (words_count == 1) { //label: | cmd
  var word = ds_list_find_value(words,0)
  if (parse_is_label(word)==false && parse_is_command(word)==false)
    throw_error("Unknown identificator '"+word+"'"); 
}
//} end of errors finding

for (var i=0; i<ds_list_size(words); i++)
{
    var word = ds_list_find_value(words,i);
    // если слово в списке команд, то вернуть его
    if (parse_is_command(word)) {
      if (i > 1) 
        throw_error("Only one command on the line is allowed!")
      return string_upper(word);
    }
};
return ""; 

