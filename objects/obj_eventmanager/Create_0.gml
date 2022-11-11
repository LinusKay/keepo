eventMap = ds_map_create();

enum event 
{
	conversationStart,
	conversationEnd,
	playerDashStart,
	playerDashEnd,
	playerDashGapStart,
	playerDashGapEnd,
	playerEmoteSit,
	playerEmoteSleep,
	playerEmoteBubbleHeart,
	playerEmoteShock,
	rainStart,
	rainEnd,
	snowStart,
	snowEnd,
	playerPickUpItem,
	playerGiftItem,
	questStart,
	questEnd,
	outfitChange,
	playerDamageEnemy,
	playerTakeDamage,
	timeNightStart,
	timeNightEnd,
	timeSunsetStart,
	timeSunsetEnd
}