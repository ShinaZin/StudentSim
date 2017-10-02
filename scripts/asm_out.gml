///asm_out()
var op = int64(argument0);
var modrm = argument1;
var delim = ' ';
switch (modrm){
  case "RM.None":
    data_out += string(rx)+delim;
    break;
    
  case "RM.Inline":
    throw_error_ex("The command does not require any operand!");
    break;
    
  case "RM.Indir":
    throw_error_ex("The command does not require any operand!");
    break;
}
