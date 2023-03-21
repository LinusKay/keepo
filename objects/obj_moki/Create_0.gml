event_inherited();

shock_timer = 20;
shock_time = 0;

event_register_script(event.rain_start, id, sleeves_rain_start);
event_register_script(event.rain_end, id, sleeves_rain_end);
event_register_script(event.snow_start, id, sleeves_snow_start);
event_register_script(event.snow_end, id, sleeves_snow_end);

response_gift_love = "sleeves_gift_love";
response_gift_like = "sleeves_gift_like";
response_gift_dislike = "sleeves_gift_dislike";
response_gift_hate = "sleeves_gift_hate";

response_mail_deny = "sleeves_mail_deny";


relationshipPos = 0;