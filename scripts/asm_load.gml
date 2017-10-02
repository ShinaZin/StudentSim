///asm_load(op, modrm)
//var op = int64(argument0);
var op = argument0
var modrm = argument1;
switch (modrm){
  case "RM.None":
    throw_error_ex("The command requires an operand!");
    break;
    
  case "RM.Inline":
    rx = mem[op];
    break;
    
  case "RM.Indir":
    rx = mem[ mem[op] ];
    break;
}
