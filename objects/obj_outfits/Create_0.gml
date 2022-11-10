event_inherited()

frameIndex = 0;
poseIndex = 1;

outfits_num = array_length(global.unlocked_outfits);

minOutfitsDisplay = 0;

if outfits_num < 15 { outfitCountDisplay =  outfits_num; }
else { outfitCountDisplay =  15; }

maxOutfitsDisplay = minOutfitsDisplay + outfitCountDisplay;

outfitSelected = 0;

border = 20;


