function scr_execute_alt(){
///@description script_execute_alt
///@arg ind
///@arg [arg1,arg2,...]
 
var s = argument0;
var a = argument1;
var len = array_length_1d(argument1);
var val;
print(s)
print(a)
 
switch(len){
    case 0:  val = script_execute(s); break;
    case 1:  val = script_execute(s, a[0]); break;
    case 2:  val = script_execute(s, a[0], a[1]); break;
    case 3:  val = script_execute(s, a[0], a[1], a[2]); break;
    case 4:  val = script_execute(s, a[0], a[1], a[2], a[3]); break;
    case 5:  val = script_execute(s, a[0], a[1], a[2], a[3], a[4]); break;
    case 6:  val = script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5]); break;
    case 7:  val = script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6]); break;
    case 8:  val = script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7]); break;
    case 9:  val = script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8]); break;
    case 10: val = script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9]); break;
    case 11: val = script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10]); break;
    case 12: val = script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11]); break;
    case 13: val = script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11], a[12]); break;
    case 14: val = script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11], a[12], a[13]); break;
    case 15: val = script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11], a[12], a[13], a[14]); break;
    case 16: val = script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11], a[12], a[13], a[14], a[15]); break;
}
 
return val;
}