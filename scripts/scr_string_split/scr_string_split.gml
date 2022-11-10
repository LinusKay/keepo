// https://www.reddit.com/r/gamemaker/comments/3zxota/comment/cyq4uk6/
function scr_string_split(_msg, _split){
	var slot = 0;
	var splits; //array to hold all splits
	var str2 = ""; //var to hold the current split we're working on building

	var i;
	for (i = 1; i < (string_length(_msg)+1); i++) {
	    var currStr = string_copy(_msg, i, 1);
	    if (currStr == _split) {
	        splits[slot] = str2; //add this split to the array of all splits
	        slot++;
	        str2 = "";
	    } else {
	        str2 = str2 + currStr;
	        splits[slot] = str2;
	    }
	}
	return splits;
}