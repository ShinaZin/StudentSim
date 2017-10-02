///parse_is_command(word: string)-> bool
var const_commands = "NOP ADD SUB INC DEC LOAD SAVE INP OUT JMP IFZ IFN HALT";
var word = argument0;
word = string_upper(word); 
var pos = string_pos(word,const_commands);
show_debug_message("[is command]: "+string(pos !=0) );//
return pos != 0 

