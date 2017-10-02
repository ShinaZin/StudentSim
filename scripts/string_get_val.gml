///string_get_val(s: string):int
var arg = string(argument0)
if ( string_digits(arg) == string_replace_all(arg,'-','') ||
     string_digits(arg) == string_replace_all(arg,'+','') 
   ){                         //if arg - number
  return int64(arg)           //then arg = val(arg)
} else {                      //if arg - char
  return string_ord_at(arg,1);//then arg = code(arg)
}
