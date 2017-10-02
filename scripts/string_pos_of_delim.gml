/// string_pos_of_delim(s: string, delimiters: string):int
var str = argument[0], delims = argument[1], res;
var delimsLength=string_length(delims);
var strLength=string_length(str);
var pos=0;
var minpos=strLength+1; //minpos за границами строки

for (i=1; i<=delimsLength; i+=1)
{
    var ch = string_copy(delims,i,1);
    pos=string_pos(ch,str);
    if (pos<minpos && pos>0) {
       minpos=pos;
    }
}

if (minpos==strLength+1) //не нашли
{  
   return 0;
}
else //нашли
{  
   return minpos;
}

