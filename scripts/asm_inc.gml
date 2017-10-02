///asm_inc(op, modrm)
var op = int64(argument0);
var modrm = argument1;

switch (modrm){
  case "RM.None":
    rx = string_get_val(rx);
    rx++;
    break;
    
  case "RM.Inline":
      rx = string_get_val(mem[op])+1;
      mem[op] = rx;
    break;
    
  case "RM.Indir":
      rx = string_get_val(mem[ mem[op] ])+1;
      mem[ mem[op] ] = rx;
    break;
}
