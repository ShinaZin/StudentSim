///asm_ifn(op, modrm)
var op = argument0;
var modrm = argument1;

switch (modrm){
  case "RM.None":
    throw_error_ex("The command requires an operand!");
    break;
    
  case "RM.Inline":
    if (string_get_val(rx) < 0){
      //  pc = ds_map_find_value(labels,op)-1;
      var val = ds_map_find_value(labels,op);
      if is_undefined(val) { 
        throw_error_ex("Unknown label '"+string(op)+"'");
        exit_cycle = true;
        break;
      }
      pc = val-1;
    }
    break;
    
  case "RM.Indir":
    if (string_get_val(rx) < 0)
      pc = mem[op];//
    break;
}
