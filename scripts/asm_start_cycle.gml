///asm_start_cycle()
exit_cycle=false
const_steps_to_loop = 5000;
steps = 0;
pc=0;
rx=0;
while (exit_cycle == false){
  var cmd = ds_list_find_value(commands,pc);
  var op  = ds_list_find_value(operands,pc);
  var modrm=ds_list_find_value(modrms,pc);
  switch (cmd){
    case "NOP": 
      break;
    case "ADD": 
      asm_add(op, modrm);
      break;
    case "SUB":
      asm_sub(op, modrm); 
      break;
    case "INC": 
      asm_inc(op, modrm);
      break;
    case "DEC": 
      asm_dec(op, modrm);
      break;
      
    case "LOAD": 
      asm_load(op, modrm);
      break;
    case "SAVE":
      asm_save(op, modrm); 
      break;
      
    case "INP": 
      asm_inp(op, modrm);
      break;
    case "OUT": 
      asm_out(op, modrm);
      break;
      
    case "JMP":
      asm_jmp(op, modrm); 
      break;
    case "IFZ":
      asm_ifz(op, modrm);
      break;
    case "IFN": 
      asm_ifn(op, modrm);
      break;
      
    case "HALT":
      exit_cycle=true;
      break;
  }
  pc++;
  steps++;
  if (steps > const_steps_to_loop) {  
    draw_set_halign(fa_left);  
    var res = show_question("ERROR: at pc = " + string(pc) +
      "#It looks the program forever gone in cycles"+
      "#Do you want to halt it?");
    if res==true
      exit_cycle=true;
    else
      steps=0;
  } // if cycled
  
  show_debug_message(string(pc)+": "+cmd+" "+op);
}
