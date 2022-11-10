///@description create_ds_grid_from_array
///@arg array

function create_ds_grid_from_array(_array){

var ds_grid;
var array = _array;
var array_num_quests = array_length(array);
var array_w = array_length(array[0]);

ds_grid = ds_grid_create(array_w, array_num_quests);

var yy = 0; repeat(array_num_quests)
{
	var quest_array = array[yy];
	
	var xx = 0; repeat(array_w)
	{
		ds_grid[# xx, yy] = quest_array[xx];
		xx++;
	}
	
	yy++;
}

return ds_grid;
	
}