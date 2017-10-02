///asm_save(op, modrm)
var op = argument0;
var modrm = argument1;
op = string_get_val(op);
switch (modrm){
  case "RM.None":
    throw_error_ex("The command requires an operand!");
    break;
    
  case "RM.Inline":
    mem[op] = rx ;
    break;
    
  case "RM.Indir":
    mem[ mem[op] ] = rx;
    break;
}
