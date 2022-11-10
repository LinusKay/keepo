event_inherited()

minItemsDisplay = 0;

if inventory_get_size() < 13 { itemCountDisplay =  inventory_get_size(); }
else { itemCountDisplay =  13; }

maxItemsDisplay = minItemsDisplay + itemCountDisplay;

itemSelected = 0;

border = 20;