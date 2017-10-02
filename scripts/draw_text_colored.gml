///draw_text_colored(x,y, text: string)
var t_x = argument0;
var t_y = argument1;
var text = argument2;
var text_color = c_white;
var symb_color = make_colour_rgb(100,255,255);
var numb_color = make_colour_rgb(255,120,120);
var comment_color = make_colour_rgb(100,255,100);
var comment_opened = false

var slen = string_length(text);
for (var i=1; i<=slen; i++){
  char = string_char_at(text,i);
  nextchar = string_char_at(text,i+1);
  if (char==';' || (char=='/' && nextchar=='/')) 
    comment_opened=true;
  if (comment_opened){
    draw_set_colour(comment_color); //comment
  } else {
    if (string_pos(char,"()[]=/\!#%^&*-+;:''<>{}.,")>0){
      draw_set_colour(symb_color);  //symb
    }else if (string_pos(char,"0123456789")>0){
      draw_set_colour(numb_color);  //number
    }else{
      draw_set_colour(text_color);  //text
    }
  }
  draw_text(t_x+(i-1)*tw,t_y,char);
}
