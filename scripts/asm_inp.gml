///asm_inp()
var op = int64(argument0);
var modrm = argument1;
switch (modrm){
  case "RM.None":
    if ( ds_queue_empty(data_inp) ){
      exit_cycle=true;
    }
    //if is num {
    //rx = int64( ds_queue_dequeue(data_inp) );
    //} else 
    rx = ds_queue_dequeue(data_inp);
    break;
    
  case "RM.Inline":
    throw_error_ex("The command does not require any operand!");
    break;
    
  case "RM.Indir":
    throw_error_ex("The command does not require any operand!");
    break;
}
