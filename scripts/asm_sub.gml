///asm_sub(op, modrm)
var op = argument0;
var modrm = argument1;
op = string_get_val(op);
rx = string_get_val(rx);
switch (modrm){
  case "RM.None":
    throw_error_ex("The command requires an operand!");
    break;
    
  case "RM.Inline":
    rx=rx - op
    break;
    
  case "RM.Indir":
    rx=rx - string_get_val( mem[op] );
    break;
}
