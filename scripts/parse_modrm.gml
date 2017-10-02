///parse_modrm(op: string)
var op = argument0;
if (op == "") 
  return "RM.None";
if (string_pos('[',op) == 1 && string_pos(']',op) != 0) 
  return "RM.Indir";
else 
  return "RM.Inline";
