/// string_word_wrap(s: string, line_length: int): string
var inpStr = string(argument0);
inpStr = string_replace_all(inpStr,"#"," ");
var inpStrLength = string_length(inpStr);
var length = argument1;

var res = "";
var words = string_split(inpStr," ");
var wordsCount = ds_list_size(words);

var spaceLeft=length;
for (i=0; i<wordsCount; i+=1)
{
    var currentWord = ds_list_find_value(words,i);
    var wordLength = string_length(currentWord);
    if (wordLength+1 > spaceLeft)
    {
        res+="#";
        spaceLeft = length - (wordLength + 2);//1
        res+=currentWord+" ";
    }
    else
    {
        spaceLeft = spaceLeft - (wordLength + 1);
        res+=currentWord+" ";
    };


}
var lastchar=string_char_at(inpStr,string_length(inpStr));
if (lastchar!=" "){
  res=string_delete(res,string_length(res),1);
}
return res;

