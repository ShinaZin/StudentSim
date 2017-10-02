/// string_do_lines(s: string, line_length: int, [spliting_chars: string]): string
var inpStr = string(argument0);
var length = argument1;
var splitingChar="";
if (argument_count >= 3) {
  splitingChar = argument2;
} else {
  splitingChar = "#";
}
var res = "";

while (string_length(inpStr)>1){
    var inpStrLen=string_length(inpStr);
    if (inpStrLen<length){
      var cpLen = inpStrLen;
    } else {
      var cpLen = length;
    }
    res = res + string_copy(inpStr,0,cpLen-1);
    res = res + splitingChar;
    inpStr = string_delete(inpStr,cpLen,0);
}
return res+inpStr;//inpStr=последний символ
