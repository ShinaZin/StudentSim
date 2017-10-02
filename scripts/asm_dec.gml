///asm_dec(op, modrm)
var op = int64(argument0);
var modrm = argument1;
switch (modrm){
  case "RM.None":
    rx = string_get_val(rx);
    rx--;
    break;
    
  case "RM.Inline":
    //var is_num = string_is_num(mem[op])
    //if (is_num==true){
      rx = string_get_val(mem[op])-1; //int64(mem[op..
      mem[op] = rx;
    /*} else {
      rx = ord(string(mem[op]))-1;
      mem[op] = chr(rx);
    }*/
    break;
    
  case "RM.Indir":
    //var is_num = string_is_num(mem[ mem[op] ])
    //if (is_num == true){
      rx = string_get_val(mem[ mem[op] ])-1;
      mem[ mem[op] ] = rx;
    /*} else {
      rx = ord(string(mem[ mem[op] ]))-1;
      mem[ mem[op] ] = chr(rx);
    }*/
    break;
}
