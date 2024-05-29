
#pragma warning disable 239
#pragma warning disable 214
#pragma warning disable 208

#include <a_samp>

#include <../../server/includes>

new MySQL: SQL;
new 
	// string 
 	gQuery[256], gString[256], sString[256], SERVER_VERSION[30], gSmallString[96], headUpString[128], 
	//variables

	OX_chose[2],ox_start=0,ox_teleport=0,ox_question[144],ox_correct=0,ox_secounds, marry_request[MAX_PLAYERS],
	togPC[MAX_PLAYERS], togVC[MAX_PLAYERS], togWT[MAX_PLAYERS], togFC[MAX_PLAYERS], togHC[MAX_PLAYERS], togAC[MAX_PLAYERS], togLC[MAX_PLAYERS],
	warnings[MAX_PLAYERS], legendaryFish[MAX_PLAYERS] = 0,  serverBonus, pMistery[MAX_PLAYERS], slapped[MAX_PLAYERS],
	VehicleGarage[MAX_VEHICLES], InGarage[MAX_PLAYERS], placegarage[MAX_GARAGE],
	quest_progress[MAX_PLAYERS], EnigmaPoints[MAX_PLAYERS], TicketPoints[MAX_PLAYERS], trivia[32], trivia_event,
	loginAttemps[MAX_PLAYERS], registerSkin[MAX_PLAYERS], registerSex[MAX_PLAYERS],
	playerRegion[MAX_PLAYERS], examVehicle[MAX_PLAYERS], examObject[MAX_PLAYERS], playerRaceCheckpoint[MAX_PLAYERS],
	
	bigEar[MAX_PLAYERS], playerCheckpoint[MAX_PLAYERS], selectedItem[MAX_PLAYERS], selectedValue[MAX_PLAYERS], playerAFK[MAX_PLAYERS],
	playerLastMove[MAX_PLAYERS], gLastCar[MAX_PLAYERS], lastCheckpointTime[MAX_PLAYERS], lastText[MAX_PLAYERS][128],  RegisterReferral[MAX_PLAYERS][64],
	tutVehicle[MAX_PLAYERS], tutActor[MAX_PLAYERS],
	
	Reported[MAX_PLAYERS] = INVALID_PLAYER_ID, inviteOffer[MAX_PLAYERS] = INVALID_PLAYER_ID, selectedPlayer[MAX_PLAYERS] = INVALID_PLAYER_ID,
	selectedPlayerList[MAX_PLAYERS][50], targetFind[MAX_PLAYERS] = INVALID_PLAYER_ID, 
	vehicleFuel[MAX_VEHICLES], vehicleEngine[MAX_VEHICLES], serverTimer[MAX_TIMERS],
	
	vehicleMarker[MAX_VEHICLES], totalDonations, Total_Ads,  playerTarget[MAX_PLAYERS], playerCover[MAX_PLAYERS],
	Rent_Available[MAX_RENT_MODELS], crateStock[3], questStock[4],
	ticketOffer[MAX_PLAYERS] = INVALID_PLAYER_ID, transferOffer[MAX_PLAYERS] = INVALID_PLAYER_ID, lastSMS[MAX_PLAYERS] = INVALID_PLAYER_ID,
	
	freeOffer[MAX_PLAYERS] = INVALID_PLAYER_ID, WeaponAmmo[MAX_PLAYERS][47], Total_Used_Mats, Most_Mats_Used, Most_Used_ID = -1, matsUsed[MAX_PLAYERS],
	In_Taxi[MAX_PLAYERS],  Player_HIT[MAX_PLAYERS] = INVALID_PLAYER_ID,
	Used_Contract[MAX_PLAYERS] = INVALID_PLAYER_ID, Player_Question[MAX_PLAYERS][150], HaveNewbie[MAX_PLAYERS] = INVALID_PLAYER_ID, NewBie_Time[MAX_PLAYERS],
	
	Helper_Answer[MAX_PLAYERS][255], pDrunkLevelLast[MAX_PLAYERS], pFPS[MAX_PLAYERS], SpectateState[MAX_PLAYERS], Spectate[MAX_PLAYERS], showedDMG[MAX_PLAYERS],
	comboDMG[MAX_PLAYERS], AC_WEAP[MAX_PLAYERS], AC_TEMPOWN[MAX_PLAYERS], defaultSkins = mS_INVALID_LISTID, rentVehicle[MAX_PLAYERS],
	Rent_Veh_Time[MAX_PLAYERS], toginv,selectedName[MAX_PLAYERS][50][MAX_PLAYER_NAME], tradeID[MAX_PLAYERS], tradeCAR[MAX_PLAYERS], playerInMod[MAX_PLAYERS],
	

	// bools
	bool: isPlayerLogged[MAX_PLAYERS], bool: pPinLogged[MAX_PLAYERS], bool: b_ShowPin[MAX_PLAYERS], 
	bool: playerFrozen[MAX_PLAYERS], bool: gPlayerUsingLoopingAnim[MAX_PLAYERS],  bool: WeaponData[MAX_PLAYERS][13],
	// floats
	Float: checkpointX[MAX_PLAYERS], Float: checkpointY[MAX_PLAYERS], Float: checkpointZ[MAX_PLAYERS],
	Float: lastPlayerPosX[MAX_PLAYERS], Float: lastPlayerPosY[MAX_PLAYERS], Float: lastPlayerPosZ[MAX_PLAYERS], 
 	Float: Health[MAX_PLAYERS], Float: Armour[MAX_PLAYERS], Float: Set_CP[MAX_PLAYERS][3],

 	// playertexts
 	PlayerText: Taxi_PTD[MAX_PLAYERS], PlayerText: pPinTD[2],PlayerText:ptd_activity[12], PlayerText:ptd_admin_hud,
	PlayerText:ptd_login[6], 	PlayerText:remas_skin[8], PlayerText:clothesP[8],
	PlayerText: dmvTD[MAX_PLAYERS], PlayerText: dmvText[MAX_PLAYERS], PlayerText: _player_Logo[MAX_PLAYERS], 
	
	PlayerText: Speedometer_PTD[MAX_PLAYERS][15], PlayerText: dealershipPTD[MAX_PLAYERS][2],
	PlayerText: fishPTD[MAX_PLAYERS][3], PlayerText: wantedTD[MAX_PLAYERS], PlayerText: WarTD[MAX_PLAYERS],
	PlayerText: undercoverTD[MAX_PLAYERS], PlayerText: findTD[MAX_PLAYERS][2], PlayerText: HUDTD[MAX_PLAYERS][5], 
	
	PlayerText: SpecTD[MAX_PLAYERS], PlayerText: paintTD[MAX_PLAYERS][2],
	PlayerText: paintRank[MAX_PLAYERS][2], PlayerText: skinTD[MAX_PLAYERS][4], PlayerText:td_name,
	PlayerText: tierPTD[MAX_PLAYERS][5], PlayerText: freeItemText[MAX_PLAYERS][5], PlayerText: freeItemPTD[MAX_PLAYERS][5],
	
	PlayerText: paidItemPTD[MAX_PLAYERS][5], PlayerText: paidItemText[MAX_PLAYERS][5], PlayerText: battleStatus[MAX_PLAYERS],
	PlayerText: boxPTD[MAX_PLAYERS][4],
 	// global texts

	Text:GoalBar, PlayerText:DailyBar, Text:JobBar, Text:reward, Text: gPinTD[15],
	Text: registerTD[4], Text: registerRegion[4], Text: registerGender[2],  
	Text: Date, Text: Time, Text: dealershipTD[8], Text: Speedometer_TD[13], 
	
	Text: fishTD_BOX_1, Text: fishTD_BOX_2, Text: battleTD[12], 
	Text: skinBox, Text: eventTD[6], Text:td_sv_name[2], 
	// 3dtexts
	Text3D:headLabel[MAX_PLAYERS],

	

 	// bars
 	PlayerBar:goalBar, PlayerBar:dailyBar, PlayerBar:jobBar,

 	// timers
	Timer: loginTimer[MAX_PLAYERS], Timer: timerDMG[MAX_PLAYERS], Timer: Ad_Timer[MAX_PLAYERS], Timer: useDrugs[MAX_PLAYERS],
	Timer: Taxi_Time[MAX_PLAYERS], 

	// iterators
	Iterator:vehicleStreamed[MAX_PLAYERS]<MAX_VEHICLES>, Iterator: playersInConnect<MAX_PLAYERS>, Iterator: Admins<MAX_PLAYERS>, 
	Iterator: Event<MAX_PLAYERS>, Iterator: Helpers<MAX_PLAYERS>, Iterator: inStaff<MAX_PLAYERS>, Iterator: Leaders<MAX_PLAYERS>,
	Iterator: admVehicles<MAX_VEHICLES>, Iterator: totalVehicles<MAX_VEHICLES>, Iterator: Reports<MAX_PLAYERS>, 
	Iterator:server_phones<MAX_PLAYERS>, Iterator:server_skins<MAX_SKINS>, Iterator:Garages<MAX_GARAGE>,
	Iterator: isPremium<MAX_PLAYERS>, Iterator: isVIP<MAX_PLAYERS>, Iterator:serverContracts<MAX_HITMAN_CONTRACTS>;

new 
	fishMarketObject, Paint_Text,
	_server_WEATHER[4] = {5, 2, 5, 2};

enum skins {
	sID,
	sRarity,
	sModel
}

enum garageInfos {
    garageID,Float:garageX,Float:garageY,Float:garageZ,garageType,garageHouse,Text3D:garageLabel,garagePickup
};
new GarageInfo[MAX_GARAGE][garageInfos];


new skinsVariables[MAX_SKINS][skins], s_skin[MAX_PLAYERS], sh_skin[MAX_PLAYERS];

new 
	thingOffer[MAX_PLAYERS] = INVALID_PLAYER_ID, thingValue[MAX_PLAYERS], thingType[MAX_PLAYERS], thingAmount[MAX_PLAYERS];

new 
	Rent_Model[MAX_RENT_MODELS] = {560, 522, 541, 495, 481};

new 
	isAuction, auctionTime, auctionMoney, auctionProprety, lastBidPlayer, auctionType, bidMoney[MAX_PLAYERS]; 

new 
	maxGoal, serverGoal = 0;
enum P_ENUMS {
	pSQL, pUserName[MAX_PLAYER_NAME], pPassword[65], pAdmin, pHelper, pRegistred, pEmail[40], pSpinPoints,
	pAge, pGender, pSkin, pLicence[4], pSkins[MAX_SKINS_OWNED], Float: playerPosX, Float: playerPosY, Float: playerPosZ, 
	pHouse, pRent, pJob, Float: pHours, pSeconds, pCash, pBank, pLevel, pRespect, pMember, pRank, 
	pClanTag, pClanDays, pClanWarns, pClanDeposited, pAdminWarns, pHelperWarns, pReferral, pReferralRP, pReferralMoney, pReferralP,
	pSlots, pPremiumPoints, pGems, pVouchers[5], pGiftHours, pHidden, pJobSkill[12], pActivePerk, pPerks[4],pDays, pFW, pFP, 
	bool:pDuty, pColor, pPremium, pVIP, pBiz, pSpawn, pHelpedPlayers, pHelpedWeek, pDrugs, pMaterials, pPin,
	pReclamer, pClan,pClanRank, pShampange[3], pJobOwn, pDiamonds[3], pJobMoney, pMarried, pBoosted, pChecks,
	pTokens, pRob, pJailTime, pWantedLevel,pTutorial, pWantedTime, pSleep, pOrder[4], pPhone, pPhoneBook, pGascan, pWT, 
	pPhoneCredit, pWTChannel, pHeadValue, pPromoCode, pHUD[5], pGoalCont, pPaintKills, pWarns, pMP3, pOres[3], pCrates[3], 
	pFireWorks[2], pCrateKey, pNeons[6], pQuest[3], pQuestProgress[3], pQuestCompleted[3], pFuel, pDonoSkin, pLogins, pAdminJail,
	// phone
	pPhoneCalled, pPhoneCaller, pPhoneStatus, pCall, pLastSMS,

	pMute,pLicenceDeelay, pRacePoints, Float: pLastWeek, Float: pLastMonth, pRaport[3], pCrime1[31], pCrime2[31], pCrime3[31], pActivityTime, VehicleSlot, Vehicle[ MAX_SLOTS ], pVSlots
};

new 
	playerVariables[MAX_PLAYERS][P_ENUMS];


enum QUEST_ENUM
{
	questVehicle, questCompleted,
	questTimes,	questStep, questTime, questTimeStep, questProbability,
	questProgress
};

new questVariables[MAX_PLAYERS][QUEST_ENUM];

new 
	Event_Active,
	Float: EPos_X, Float: EPos_Y, Float: EPos_Z,
	Event_Interior, Event_Virtual,
	Text3D: Event_Text, Event_Pickup, fast_event_word[32], fast_event_active;


enum REGION_ENUMS { maleModel[4], femaleModel[4] };

new 
	regionVariable[4][REGION_ENUMS] = {
		{ { 60, 133, 170, 37 }, { 56, 131, 193, 190 } },
		{ { 15, 7, 25, 144 }, { 13, 12, 243, 10 } },
		{ { 20, 29, 44, 72 }, { 88, 91, 199, 216 } },
		{ { 229, 210, 58, 203 }, { 225, 263, 53, 214 } }
	};

enum 
{
	CHECKPOINT_NONE,
	CHECKPOINT_DEFAULT,
	CHECKPOINT_JOB_GENERAL,
	CHECKPOINT_NEW_PIZZA,
	CHECKPOINT_FINISH_MINER,
	CHECKPOINT_BUS_END,
	CHECKPOINT_PABLO,
	CHECKPOINT_TRUCKER_END,
	CHECKPOINT_FARM_END,
	CHECKPOINT_FARM_COW,
	CHECKPOINT_FARM_END_COW,
	CHECKPOINT_TTC,
	CHECKPOINT_MATS_END,
	CHECKPOINT_DRUGS_END,
	CHECKPOINT_START_DRUGS,
	CHECKPOINT_ROB
};

enum
{
	INDEX_JOBS,
	INDEX_PET,
	INDEX_PHONE,
	INDEX_THINGS
};

enum panel_actions
{
	panelID,
	panelPlayer,
	panelValue[256],
	panelType
};

new 
	panelActions[MAX_PANEL_ACTIONS][panel_actions];

enum {
	ACTION_NONE,
	ACTION_AMETHYSTS,
	ACTION_KICK,
	ACTION_BAN,
	ACTION_MUTE,
	ACTION_WARN
};

enum specEnums
{
	Float: pOldPos[3],
	pWorld,
	pInt,
	pState,
	pInVehicle,
	bool: pSpectating
};

new 
	BeforeSpectate[MAX_PLAYERS][specEnums];

new 
	bikeVehicles[MAX_BIKES] = { 481, 509, 510 },
	boatVehicles[MAX_BOATS] = { 430, 446, 452, 453, 454, 472, 473, 484, 493, 595 },
	motoVehicles[MAX_MOTO] = { 463, 461, 462, 468, 471, 521, 522, 581, 586, 448, 523 },
	planeVehicles[MAX_PLANES] = { 417, 425, 447, 460, 464, 465, 469, 476, 487, 488, 497, 501, 511, 512, 513, 519, 520, 548, 553, 563, 577, 592, 593 },
	vipModels[MAX_VIP_MODELS] = { 560, 541, 429, 495, 411, 579, 562, 451, 480 };

new 
	playerLicences[][8] = {
	"Driving",
	"Pilot",
	"Sailing",
	"Weapon"
};

new Float: dmvCheckpoints[15][3] = {
	{1261.2083,-1318.9012,12.8497},
	{1264.7844,-1285.1600,13.0240},
	{1293.2365,-1283.1312,13.1080},
	{1326.1023,-1283.0151,13.1099},
	{1340.1514,-1298.5687,13.2503},
	{1340.6306,-1341.8411,13.1098},
	{1339.8535,-1387.1941,13.2156},
	{1312.1592,-1393.1852,13.0253},
	{1279.8646,-1393.5173,12.9115},
	{1244.8706,-1393.5117,12.8183},
	{1206.5092,-1371.4504,13.0282},
	{1213.2719,-1283.3531,13.1112},
	{1253.2897,-1289.3578,13.1269},
	{1253.4513,-1324.4991,12.8073},
	{1279.7374,-1356.6575,13.0787}
	};


new Float: metalExits[4][3] = {

	{1372.0574,-16.5454,1000.9933},
	{1372.2140,-21.8051,1000.9615},
	{1371.9916,-27.0544,1000.9615},
	{1371.9915,-32.3785,1000.9933}

};

new RandomMessages[][] = {
	"Random Message: {FFFFFF}Daca ai o sugestie, sunt sanse mari sa fie luata in considerare daca o postezi pe forum (https://gameforplay.ro/).",
	"Random Message: {FFFFFF}Ai level 3 dar inca nu ai o masina? Mergi la rent car si inchiriaza una pe placul tau!",
	"Random Message: {FFFFFF}Nu ai destui bani pentru a cumpara o casa? Atunci inchiriaza una pe placul tau!",
	"Random Message: {FFFFFF}In fiecare zi ai la dispozitie 3 daily quest-uri de indeplinit. Daca le termini pe toate vei fi rasplatit!",
	"Random Message: {FFFFFF}Pentru o mai buna siguranta iti sugeram sa iti setezi un pin. Foloseste /setpin.",
	"Random Message: {FFFFFF}Beneficiile contului premium pot fi vazute tastand comanda [/help > Premium account].",
	"Random Message: {FFFFFF}Beneficiile contului VIP pot fi vazute tastand comanda [/help > VIP account].",
	"Random Message: {FFFFFF}Pentru a aplica intr-o factiune ai nevoie de minim level 5 si o aplicatie pe panel (https://panel.gameforplay.ro/).",
	"Random Message: {FFFFFF}Vrei sa faci bani cinstiti? Atunci munceste la unul dintre joburile de pe server!"
};

new 
	aVehicleNames[][] = {
	"Landstalker", "Bravura", "Buffalo", "Linerunner", "Perrenial", "Sentinel",
	"Dumper", "Firetruck", "Trashmaster", "Stretch", "Manana", "Infernus",
	"Voodoo", "Pony", "Mule", "Cheetah", "Ambulance", "Leviathan", "Moonbeam",
	"Esperanto", "Taxi", "Washington", "Bobcat", "Whoopee", "BF Injection",
	"Hunter", "Premier", "Enforcer", "Securicar", "Banshee", "Predator", "Bus",
	"Rhino", "Barracks", "Hotknife", "Trailer", "Previon", "Coach", "Cabbie",
	"Stallion", "Rumpo", "RC Bandit", "Romero", "Packer", "Monster", "Admiral",
	"Squalo", "Seasparrow", "Pizzaboy", "Tram", "Trailer", "Turismo", "Speeder",
	"Reefer", "Tropic", "Flatbed", "Yankee", "Caddy", "Solair", "Berkley's RC Van",
	"Skimmer", "PCJ-600", "Faggio", "Freeway", "RC Baron", "RC Raider", "Glendale",
	"Oceanic","Sanchez", "Sparrow", "Patriot", "Quad", "Coastguard", "Dinghy",
	"Hermes", "Sabre", "Rustler", "ZR-350", "Walton", "Regina", "Comet", "BMX",
	"Burrito", "Camper", "Marquis", "Baggage", "Dozer", "Maverick", "News Chopper",
	"Rancher", "FBI Rancher", "Virgo", "Greenwood", "Jetmax", "Hotring", "Sandking",
	"Blista Compact", "Police Maverick", "Boxville", "Benson", "Mesa", "RC Goblin",
	"Hotring Racer A", "Hotring Racer B", "Bloodring Banger", "Rancher", "Super GT",
	"Elegant", "Journey", "Bike", "Mountain Bike", "Beagle", "Cropduster", "Stunt",
	"Tanker", "Roadtrain", "Nebula", "Majestic", "Buccaneer", "Shamal", "Hydra",
	"FCR-900", "NRG-500", "HPV1000", "Cement Truck", "Tow Truck", "Fortune",
	"Cadrona", "FBI Truck", "Willard", "Forklift", "Tractor", "Combine", "Feltzer",
	"Remington", "Slamvan", "Blade", "Freight", "Streak", "Vortex", "Vincent",
	"Bullet", "Clover", "Sadler", "Firetruck", "Hustler", "Intruder", "Primo",
	"Cargobob", "Tampa", "Sunrise", "Merit", "Utility", "Nevada", "Yosemite",
	"Windsor", "Monster", "Monster", "Uranus", "Jester", "Sultan", "Stratum",
	"Elegy", "Raindance", "RC Tiger", "Flash", "Tahoma", "Savanna", "Bandito",
	"Freight Flat", "Streak Carriage", "Kart", "Mower", "Dune", "Sweeper",
	"Broadway", "Tornado", "AT-400", "DFT-30", "Huntley", "Stafford", "BF-400",
	"News Van", "Tug", "Trailer", "Emperor", "Wayfarer", "Euros", "Hotdog", "Club",
	"Freight Box", "Trailer", "Andromada", "Dodo", "RC Cam", "Launch", "Police Car",
	"Police Car", "Police Car", "Police Ranger", "Picador", "S.W.A.T", "Alpha",
	"Phoenix", "Glendale", "Sadler", "Luggage", "Luggage", "Stairs", "Boxville",
	"Tiller", "Utility Trailer"
};

new 
	const GunNames[48][] = {
	"Nothink",
	"Brass Knuckles",
	"Golf Club",
	"Nitestick",
	"Knife",
	"Baseball Bat",
	"Showel",
	"Pool Cue",
	"Katana",
	"Chainsaw",
	"Purple Dildo",
	"Small White Dildo",
	"Long White Dildo",
	"Vibrator",
	"Flowers",
	"Cane",
	"Grenade",
	"Tear Gas",
	"Molotov",
	"Vehicle Missile",
	"Hydra Flare",
	"Jetpack",
	"Glock",
	"Silenced Colt",
	"Desert Eagle",
	"Shotgun",
	"Sawn Off",
	"Combat Shotgun",
	"Micro UZI",
	"MP5",
	"AK47",
	"M4",
	"Tec9",
	"Rifle",
	"Sniper Rifle",
	"Rocket Launcher",
	"HS Rocket Launcher",
	"Flamethrower",
	"Minigun",
	"Satchel Charge",
	"Detonator",
	"Spraycan",
	"Fire Extinguisher",
	"Camera",
	"Nightvision",
	"Infrared Vision",
	"Parachute",
	"Fake Pistol"
};

new
	RadioNames[][180] =
	{
		{"{FF3838}Stop radio"},
		{"Radio GameForPlay"},
		{"Radio Tequila Necenzurat"}, 
		{"Radio Hit"},
		{"Radio Tequila Manele"},
		{"Radio Virgin"},
		{"Radio Gangsta Manele"},
		{"Radio Mix"},
		{"Radio Digi FM"},
		{"Radio Europa FM"}
	},
	RadioLink[][180] =
	{
		{""},
		{"http://radio.gameforplay.ro:8002/stream"},
		{"http://necenzurat.radiotequila.ro:7000/"},
		{"http://live.radio-hit.ro:8500/index.html?sid=1"}, // hit
		{"http://live.radiotequila.ro:7000/"}, // tqeuia
		{"http://www.romaniaradio.ro/radio/virgin-radio.shtml"}, // virgin
		{"http://live.radiogangsta.ro:8800/index.html?sid=1"}, // gansga
		{"http://live.radioclubmix.ro:9999"}, // mix
		{"http://edge76.rdsnet.ro:84/digifm/digifm.mp3"}, // digi
		{"http://astreaming.europafm.ro:8000/europafm_aacp48k"} // bucuresti
	},	
	PlayRadio[MAX_PLAYERS],
	CarRadio[MAX_VEHICLES],	CarLink[MAX_VEHICLES][180];

enum bpQuests {
	BP_QUEST_FARM,
	BP_QUEST_TRUCK,
	BP_QUEST_PAINT,
	BP_QUEST_GIFT,
	BP_QUEST_FISH,
	BP_QUEST_FUEL,
	BP_QUEST_DAMAGE_PAINT,
	BP_QUEST_GLOBAL_GOAL,
	BP_QUEST_CONTRACT,
	BP_QUEST_ROB_OR_WANTED,
	BP_QUEST_FIND,
	BP_QUEST_SECURITY,
	BP_QUEST_UBER,
	BP_QUEST_MATS,
	BP_QUEST_PIZZA,
	BP_QUEST_RARE_FISH,
	BP_QUEST_ADS,
	BP_QUEST_BRIEFCASE,
	BP_QUEST_TRANSFER,
	BP_QUEST_PAYDAYS,
	BP_QUEST_BEGINNER_CRATE,
	BP_QUEST_FLOWERS,
	BP_QUEST_LOSS_WANTED,
	BP_QUEST_KILL_COP_OR_WANTED,
	BP_QUEST_FISH_CONSECUTIVE,
	BP_QUEST_SELL_GUN_OR_ARREST,
	BP_QUEST_PAINT_DEAGLE,
	BP_QUEST_JOB_MONEY,
	BP_QUEST_DAILY_QUESTS,
	BP_QUEST_DICE,
	BP_QUEST_CLOTHES,
	BP_QUEST_USE_DRUGS_OR_DEPOSIT,
	BP_QUEST_EAT_FROM_INV,
	BP_QUEST_PLAY_SECONDS,
	BP_QUEST_NEW_FIGHT_STYLE,
	BP_QUEST_PARACHUTE
};

enum
{
	QUEST_TYPE_NONE,
	QUEST_TYPE_BASEBALL,
	QUEST_TYPE_RACE,
	QUEST_TYPE_PIRAMIDA,
	QUEST_TYPE_ROB,
	QUEST_TYPE_MATS,
	QUEST_TYPE_FISH,
	QUEST_TYPE_PIZZA,
	QUEST_TYPE_CONTRACT,
	QUEST_TYPE_ADS,
	QUEST_TYPE_PNS,
	QUEST_TYPE_FARM,
	QUEST_TYPE_AERO,
	QUEST_TYPE_DRUGS,
	QUEST_TYPE_BAR,
	QUEST_TYPE_PAINT,
	QUEST_TYPE_CHILLIAD
};

enum
{
	PERK_NONE,
	PERK_TYPE_10_BOOST,
	PERK_TYPE_20_MORE_PAYDAY,
	PERK_TYPE_10_ARMOUR,
	PERK_TYPE_1_RESPECT,
	PERK_TYPE_30_MATS,
	PERK_TYPE_1_DRUG,
	PERK_TYPE_50_MONEY_ROB,
	PERK_TYPE_0_TAXES,
	PERK_TYPE_10_LUCK,
	PERK_TYPE_2_FISH
}

new 
	versionMonth[][] = { "Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec" };

new 
	voucherNames[][] = {
		"Clear vehicle KM and Days",
		"Diamonds (50)"
	};

enum hitmanContracts {
	tID, 
	targetSum, 
	checkBy, 
	lastUpdated[80]
}
new contractVariables[MAX_HITMAN_CONTRACTS][hitmanContracts];


#include <system/sql>

#if defined ROB_SPECIAL
#include <system/rob>
#endif

#include <system/server_Settings>

#include <system/playerStream>


function MyHttpResponse(playerid, response_code, data[]){
	new ip[16];
	GetPlayerIp(playerid, ip, sizeof ip);
	if(response_code == 200){
		if(data[0] == 'Y'){
			va_SendAdminsMessage(1, COLOR_LIGHTRED, " %s was kicked by AdmBot, reason: VPN detected.", getNameEx(playerid),playerid);
			KickEx(playerid);
		}
	}
	return true;
}
#include <system/clans>

function checkPlayerAccount(playerid)
{
	SendClientMessage(playerid, COLOR_SERVER, "Server: {ffffff}Checking your name.. please wait!");

	if(cache_num_rows())
	{
		loginCamera(playerid);

		for(new i = 0; i < 6; i++) {
			PlayerTextDrawShow(playerid, ptd_login[i]);
			new string[64];
			cache_get_value_name_int(0, "ID", playerVariables[playerid][pSQL]);
			cache_get_value_name_int(0, "Skin", playerVariables[playerid][pSkin]);
			format(string, sizeof string, "%s~n~(%d)", getNameEx(playerid), getDatabaseID(playerid));
			PlayerTextDrawSetString(playerid, ptd_login[3], string);
			PlayerTextDrawSetPreviewModel(playerid, ptd_login[2], playerVariables[playerid][pSkin]);
			SelectTextDraw(playerid, COLOR_SERVER);		
		}



	/*	SendClientMessage(playerid, COLOR_SERVER, "Server: {ffffff}This name is already registred. Enter your password below to login!");
		Dialog_Show(playerid, DIALOG_LOGIN, DIALOG_STYLE_PASSWORD, "Server: Login", "This account is already registred!\nEnter your password below.", "Login", "Close");*/
	}
	else
	{
		SendClientMessage(playerid, COLOR_SERVER, "Server: {ffffff}This name is not registred. Please register your account!");
		Dialog_Show(playerid, DIALOG_REGISTER, DIALOG_STYLE_PASSWORD, "Server: Register", "This name is not registred!\nEnter the password you want below.", "Register", "Close");
	}

	loginTimer[playerid] = defer playerLoginTimer(playerid);
	Iter_Add(playersInConnect, playerid);
	createPlayerTextdraws(playerid);
	cratesPlayerTextdraws(playerid);
	#if defined CARTEL_QUEST
	loadPlayerQuestTextdraws(playerid);
	#endif
	return true;
}
#include <system/pet>

function onPlayerLogin(playerid)
{
	if(isPlayerLogged[playerid]) return KickEx(playerid);

	if(!cache_num_rows())
	{
		loginAttemps[playerid] ++;
		SendFormatMessage(playerid, COLOR_RED, "The entered password is incorrect! (%d attempts left)", 3 - loginAttemps[playerid]);

		if(loginAttemps[playerid] == MAX_LOGIN_ATTEMS) return kickPlayer(playerid, "You used all your available login attempts! You got kicked."), insertLogin(playerid, false);
		else Dialog_Show(playerid, DIALOG_LOGIN, DIALOG_STYLE_PASSWORD, "Server: Login", "This account is already registred!\nEnter your password below.\n{d34747}Error: Invalid password!", "Login", "Close");
	}
	else
	{
		/*============================================ START DATA LOAD ============================================*/
		new 
			tmpStr[256], tmpResult[256],
			playerCI[41], fStyle;

		cache_get_value_name_int(0, "ID", playerVariables[playerid][pSQL]);
		cache_get_value_name(0, "Password", playerVariables[playerid][pPassword]);
		cache_get_value_name(0, "Name", playerVariables[playerid][pUserName]);
		cache_get_value_name(0, "Email", playerVariables[playerid][pEmail]);
		cache_get_value_name_int(0, "Admin", playerVariables[playerid][pAdmin]);
		cache_get_value_name_int(0, "Helper", playerVariables[playerid][pHelper]);
		cache_get_value_name_int(0, "Registred", playerVariables[playerid][pRegistred]);
		cache_get_value_name_int(0, "Age", playerVariables[playerid][pAge]);
		cache_get_value_name_int(0, "Gender", playerVariables[playerid][pGender]);
		cache_get_value_name_int(0, "Skin", playerVariables[playerid][pSkin]);
		cache_get_value_name_int(0, "House", playerVariables[playerid][pHouse]);
		cache_get_value_name_int(0, "Rent", playerVariables[playerid][pRent]);
	    cache_get_value_name_int(0, "Pin", playerVariables[playerid][pPin]);
	    cache_get_value_name_int(0, "JobOwn", playerVariables[playerid][pJobOwn]);
		cache_get_value_name_int(0, "Tutorial", playerVariables[playerid][pTutorial]);
		cache_get_value_name_int(0, "Business", playerVariables[playerid][pBiz]);
		cache_get_value_name_int(0, "Job", playerVariables[playerid][pJob]);
		cache_get_value_name_int(0, "Level", playerVariables[playerid][pLevel]);
		cache_get_value_name_int(0, "Respect", playerVariables[playerid][pRespect]);
		cache_get_value_name_int(0, "Cash", playerVariables[playerid][pCash]);
		cache_get_value_name_int(0, "Bank", playerVariables[playerid][pBank]);
		cache_get_value_name_int(0, "Seconds", playerVariables[playerid][pSeconds]);
		cache_get_value_name_int(0, "AdminJail", playerVariables[playerid][pAdminJail]);
		cache_get_value_name_int(0, "Member", playerVariables[playerid][pMember]);
		cache_get_value_name_int(0, "Rank", playerVariables[playerid][pRank]);
		cache_get_value_name_int(0, "Days", playerVariables[playerid][pDays]);
		cache_get_value_name_int(0, "FW", playerVariables[playerid][pFW]);
		cache_get_value_name_int(0, "FP", playerVariables[playerid][pFP]);
		cache_get_value_name_int(0, "Color", playerVariables[playerid][pColor]);
		cache_get_value_name_int(0, "Premium", playerVariables[playerid][pPremium]);
		cache_get_value_name_int(0, "VIP", playerVariables[playerid][pVIP]);
		cache_get_value_name_int(0, "Slots", playerVariables[playerid][pSlots]);
		cache_get_value_name_int(0, "PremiumPoints", playerVariables[playerid][pPremiumPoints]);
		cache_get_value_name_int(0, "Gems", playerVariables[playerid][pGems]);
		cache_get_value_name_int(0, "Hidden", playerVariables[playerid][pHidden]);
		cache_get_value_name_int(0, "GiftHours", playerVariables[playerid][pGiftHours]);
		cache_get_value_name_int(0, "Spawn", playerVariables[playerid][pSpawn]);
		cache_get_value_name_int(0, "HelpedPlayers", playerVariables[playerid][pHelpedPlayers]);
		cache_get_value_name_int(0, "HelpedWeek", playerVariables[playerid][pHelpedWeek]);
		cache_get_value_name_int(0, "Drugs", playerVariables[playerid][pDrugs]);
		cache_get_value_name_int(0, "Materials", playerVariables[playerid][pMaterials]);
		cache_get_value_name_int(0, "Tokens", playerVariables[playerid][pTokens]);
		cache_get_value_name_int(0, "Rob", playerVariables[playerid][pRob]);
		cache_get_value_name_int(0, "Reclamer", playerVariables[playerid][pReclamer]);
		cache_get_value_name_int(0, "JailTime", playerVariables[playerid][pJailTime]);
		cache_get_value_name_int(0, "WantedLevel", playerVariables[playerid][pWantedLevel]);
		cache_get_value_name_int(0, "Married", playerVariables[playerid][pMarried]);
		cache_get_value_name_int(0, "WantedTime", playerVariables[playerid][pWantedTime]);
		cache_get_value_name_int(0, "Phone", playerVariables[playerid][pPhone]);
		cache_get_value_name_int(0, "PhoneBook", playerVariables[playerid][pPhoneBook]);
		cache_get_value_name_int(0, "PhoneCredit", playerVariables[playerid][pPhoneCredit]);
		cache_get_value_name_int(0, "WT", playerVariables[playerid][pWT]);
		cache_get_value_name_int(0, "WTChannel", playerVariables[playerid][pWTChannel]);
		cache_get_value_name_int(0, "Gascan", playerVariables[playerid][pGascan]);
		cache_get_value_name_int(0, "Fuel", playerVariables[playerid][pFuel]);
		cache_get_value_name_int(0, "HeadValue", playerVariables[playerid][pHeadValue]);
		cache_get_value_name_int(0, "PaintKills", playerVariables[playerid][pPaintKills]);
		cache_get_value_name_int(0, "Warns", playerVariables[playerid][pWarns]);
		cache_get_value_name_int(0, "MP3", playerVariables[playerid][pMP3]);
		cache_get_value_name_int(0, "CrateKeys", playerVariables[playerid][pCrateKey]);
		cache_get_value_name_int(0, "Mute", playerVariables[playerid][pMute]);
		cache_get_value_name_int(0, "DrivingSuspend", playerVariables[playerid][pLicenceDeelay]);
		cache_get_value_name_int(0, "FightStyle", fStyle);
		cache_get_value_name_int(0, "ActivityTime", playerVariables[playerid][pActivityTime]);
		cache_get_value_name_int(0, "GoalContribution", playerVariables[playerid][pGoalCont]);
		cache_get_value_name_int(0, "SpinPoints", playerVariables[playerid][pSpinPoints]);
		cache_get_value_name_int(0, "Mistery", pMistery[playerid]);
		cache_get_value_name_int(0, "JobMoney", playerVariables[playerid][pJobMoney]);
		cache_get_value_name_int(0, "DonoSkin", playerVariables[playerid][pDonoSkin]);

		cache_get_value_name_int(0, "Referral", playerVariables[playerid][pReferral]);
		cache_get_value_name_int(0, "ReferralRP", playerVariables[playerid][pReferralRP]);
		cache_get_value_name_int(0, "ReferralMoney", playerVariables[playerid][pReferralMoney]);
		cache_get_value_name_int(0, "Checks", playerVariables[playerid][pChecks]);
		#if defined ENIGMA_QUEST
		cache_get_value_name_int(0, "EnigmaPoints", EnigmaPoints[playerid]);
		cache_get_value_name_int(0, "quest_progress", quest_progress[playerid]);
		#endif
		cache_get_value_name_int(0, "TicketPoints", TicketPoints[playerid]);
		// clans
		cache_get_value_name_int(0, "pre_quest", questVariables[playerid][questProgress]);
		cache_get_value_name_int(0, "pre_times", questVariables[playerid][questTimes]);

		cache_get_value_name_int(0, "Clan", playerVariables[playerid][pClan]);
		cache_get_value_name_int(0, "ClanRank", playerVariables[playerid][pClanRank]);
		
		cache_get_value_name_int(0, "togPC", togPC[playerid]);
		cache_get_value_name_int(0, "togVC", togVC[playerid]);
		cache_get_value_name_int(0, "togWT", togWT[playerid]);
		cache_get_value_name_int(0, "togFC", togFC[playerid]);
		cache_get_value_name_int(0, "togHC", togHC[playerid]);
		cache_get_value_name_int(0, "togAC", togAC[playerid]);
		cache_get_value_name_int(0, "togLC", togLC[playerid]);

		cache_get_value_name(0, "GPCI", playerCI);
		cache_get_value_name(0, "Crime1", playerVariables[playerid][pCrime1]);
		cache_get_value_name(0, "Crime2", playerVariables[playerid][pCrime2]);
		cache_get_value_name(0, "Crime3", playerVariables[playerid][pCrime3]);

		cache_get_value_name_float(0, "Hours", playerVariables[playerid][pHours]);
		cache_get_value_name_float(0, "LastWeek", playerVariables[playerid][pLastWeek]);
		cache_get_value_name_float(0, "LastMonth", playerVariables[playerid][pLastMonth]);
		cache_get_value_name_int(0, "clanDays", playerVariables[playerid][pClanDays]);
		cache_get_value_name_int(0, "clanTag", playerVariables[playerid][pClanTag]);
		cache_get_value_name_int(0, "totalLogins", playerVariables[playerid][pLogins]);
		cache_get_value_name(0, "Licenses", tmpResult); format(tmpStr, sizeof tmpStr, tmpResult);
		sscanf(tmpStr, "p<|>iiii", playerVariables[playerid][pLicence][0], playerVariables[playerid][pLicence][1], 
			playerVariables[playerid][pLicence][2], playerVariables[playerid][pLicence][3]);


		cache_get_value_name(0, "ClanStats",  tmpResult); format(tmpStr, sizeof tmpStr, tmpResult);
		sscanf(tmpStr,"p<|>dd", playerVariables[playerid][pClanWarns], playerVariables[playerid][pClanDeposited]);


		cache_get_value_name(0, "Order", tmpResult); format(tmpStr, sizeof tmpStr, tmpResult);
		sscanf(tmpStr, "p<|>iiii", playerVariables[playerid][pOrder][0], playerVariables[playerid][pOrder][1], 
			playerVariables[playerid][pOrder][2], playerVariables[playerid][pOrder][3]);

		cache_get_value_name(0, "Shampange", tmpResult); format(tmpStr, sizeof tmpStr, tmpResult);
		sscanf(tmpStr, "p<|>iii", playerVariables[playerid][pShampange][0], playerVariables[playerid][pShampange][1], playerVariables[playerid][pShampange][2]);

		cache_get_value_name(0, "HUD", tmpResult); format(tmpStr, sizeof tmpStr, tmpResult);
		sscanf(tmpStr, "p<|>iiii", playerVariables[playerid][pHUD][0], playerVariables[playerid][pHUD][1], 
			playerVariables[playerid][pHUD][2], playerVariables[playerid][pHUD][3]);

		cache_get_value_name(0, "Ores", tmpResult); format(tmpStr, sizeof tmpStr, tmpResult);
		sscanf(tmpStr, "p<|>iii", playerVariables[playerid][pOres][0], playerVariables[playerid][pOres][1], playerVariables[playerid][pOres][2]);

		cache_get_value_name(0, "Raport", tmpResult); format(tmpStr, sizeof tmpStr, tmpResult);
		sscanf(tmpStr, "p<|>iii", playerVariables[playerid][pRaport][0], playerVariables[playerid][pRaport][1], playerVariables[playerid][pRaport][2]);


		cache_get_value_name(0, "Crates", tmpResult); format(tmpStr, sizeof tmpStr, tmpResult);
		sscanf(tmpStr, "p<|>iii", playerVariables[playerid][pCrates][0], playerVariables[playerid][pCrates][1], playerVariables[playerid][pCrates][2]);

		cache_get_value_name(0, "Vouchers", tmpResult); format(tmpStr, 10, tmpResult);
		sscanf(tmpStr, "p<|>iiiii", playerVariables[playerid][pVouchers][0], playerVariables[playerid][pVouchers][1], playerVariables[playerid][pVouchers][2], playerVariables[playerid][pVouchers][3], playerVariables[playerid][pVouchers][4]);

		cache_get_value_name(0, "FireWorks", tmpResult); format(tmpStr, 10, tmpResult);
		sscanf(tmpStr, "p<|>ii", playerVariables[playerid][pFireWorks][0], playerVariables[playerid][pFireWorks][1]);

		cache_get_value_name(0, "warnsStaff", tmpResult); format(tmpStr, 10, tmpResult);
		sscanf(tmpStr, "p<|>ii", playerVariables[playerid][pHelperWarns], playerVariables[playerid][pAdminWarns]);

		cache_get_value_name(0, "JobSkill", tmpResult); format(tmpStr, sizeof tmpStr, tmpResult);
		sscanf(tmpStr, "p<|>iiiiiiiiiiii", playerVariables[playerid][pJobSkill][0], playerVariables[playerid][pJobSkill][1], playerVariables[playerid][pJobSkill][2],
			playerVariables[playerid][pJobSkill][3], playerVariables[playerid][pJobSkill][4], playerVariables[playerid][pJobSkill][5], playerVariables[playerid][pJobSkill][6], 
			playerVariables[playerid][pJobSkill][7], playerVariables[playerid][pJobSkill][8], playerVariables[playerid][pJobSkill][9], playerVariables[playerid][pJobSkill][10], playerVariables[playerid][pJobSkill][11]);

		cache_get_value_name(0, "Diamonds", tmpResult); format(tmpStr, sizeof tmpStr, tmpResult);
		sscanf(tmpStr, "p<|>iii", playerVariables[playerid][pDiamonds][0], playerVariables[playerid][pDiamonds][1], playerVariables[playerid][pDiamonds][2]);
		    
		cache_get_value_name(0, "Perks", tmpResult);  format(tmpStr, sizeof tmpStr, tmpResult);
		sscanf(tmpStr, "p<|>iiii", playerVariables[playerid][pPerks][0], playerVariables[playerid][pPerks][1], playerVariables[playerid][pPerks][2], playerVariables[playerid][pPerks][3]);
		playerVariables[playerid][pActivePerk] = -1;
	    cache_get_value_name(0, "Pet", tmpResult); format(tmpStr, sizeof tmpStr, tmpResult);
	    sscanf(tmpStr, "p<|>iiiii", 
	        petVariables[playerid][petStatus], petVariables[playerid][petType], petVariables[playerid][petLevel], petVariables[playerid][petLoyalty], petVariables[playerid][petHunger]);

		cache_get_value_name(0, "Skins", tmpResult); format(tmpStr, sizeof tmpStr, tmpResult);
		sscanf(tmpStr, "p<|>iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii", playerVariables[playerid][pSkins][0], playerVariables[playerid][pSkins][1], playerVariables[playerid][pSkins][2], playerVariables[playerid][pSkins][3], playerVariables[playerid][pSkins][4],
		playerVariables[playerid][pSkins][5], playerVariables[playerid][pSkins][6], playerVariables[playerid][pSkins][7], playerVariables[playerid][pSkins][8], playerVariables[playerid][pSkins][9],
		playerVariables[playerid][pSkins][10], playerVariables[playerid][pSkins][11], playerVariables[playerid][pSkins][12], playerVariables[playerid][pSkins][13], playerVariables[playerid][pSkins][14],
		playerVariables[playerid][pSkins][15], playerVariables[playerid][pSkins][16], playerVariables[playerid][pSkins][17], playerVariables[playerid][pSkins][18], playerVariables[playerid][pSkins][19],
		playerVariables[playerid][pSkins][20], playerVariables[playerid][pSkins][21], playerVariables[playerid][pSkins][21], playerVariables[playerid][pSkins][23], playerVariables[playerid][pSkins][24],
		playerVariables[playerid][pSkins][25], playerVariables[playerid][pSkins][26], playerVariables[playerid][pSkins][27], playerVariables[playerid][pSkins][28], playerVariables[playerid][pSkins][29],
		playerVariables[playerid][pSkins][30], playerVariables[playerid][pSkins][31], playerVariables[playerid][pSkins][32], playerVariables[playerid][pSkins][33], playerVariables[playerid][pSkins][34],
		playerVariables[playerid][pSkins][35], playerVariables[playerid][pSkins][36], playerVariables[playerid][pSkins][37], playerVariables[playerid][pSkins][38], playerVariables[playerid][pSkins][39],
		playerVariables[playerid][pSkins][40], playerVariables[playerid][pSkins][41], playerVariables[playerid][pSkins][42], playerVariables[playerid][pSkins][43], playerVariables[playerid][pSkins][44],
		playerVariables[playerid][pSkins][45], playerVariables[playerid][pSkins][46], playerVariables[playerid][pSkins][47], playerVariables[playerid][pSkins][48], playerVariables[playerid][pSkins][49],
		playerVariables[playerid][pSkins][50], playerVariables[playerid][pSkins][51], playerVariables[playerid][pSkins][52], playerVariables[playerid][pSkins][53], playerVariables[playerid][pSkins][54],
		playerVariables[playerid][pSkins][55], playerVariables[playerid][pSkins][56], playerVariables[playerid][pSkins][57], playerVariables[playerid][pSkins][58], playerVariables[playerid][pSkins][59],
		playerVariables[playerid][pSkins][60], playerVariables[playerid][pSkins][61], playerVariables[playerid][pSkins][62], playerVariables[playerid][pSkins][63], playerVariables[playerid][pSkins][64],
		playerVariables[playerid][pSkins][65], playerVariables[playerid][pSkins][66], playerVariables[playerid][pSkins][67], playerVariables[playerid][pSkins][68], playerVariables[playerid][pSkins][69],
		playerVariables[playerid][pSkins][70], playerVariables[playerid][pSkins][71], playerVariables[playerid][pSkins][72], playerVariables[playerid][pSkins][73], playerVariables[playerid][pSkins][74],
		playerVariables[playerid][pSkins][75], playerVariables[playerid][pSkins][76], playerVariables[playerid][pSkins][77], playerVariables[playerid][pSkins][78], playerVariables[playerid][pSkins][79],
		playerVariables[playerid][pSkins][80], playerVariables[playerid][pSkins][81], playerVariables[playerid][pSkins][82], playerVariables[playerid][pSkins][83], playerVariables[playerid][pSkins][84],
		playerVariables[playerid][pSkins][85], playerVariables[playerid][pSkins][86], playerVariables[playerid][pSkins][87], playerVariables[playerid][pSkins][88], playerVariables[playerid][pSkins][89],
		playerVariables[playerid][pSkins][90], playerVariables[playerid][pSkins][91], playerVariables[playerid][pSkins][92], playerVariables[playerid][pSkins][93], playerVariables[playerid][pSkins][94],
		playerVariables[playerid][pSkins][95], playerVariables[playerid][pSkins][96], playerVariables[playerid][pSkins][97], playerVariables[playerid][pSkins][98], playerVariables[playerid][pSkins][99]);

	    cache_get_value_name(0, "PetName", petVariables[playerid][petName]);

		SetPlayerFightingStyle(playerid, fStyle);

		gQuery[ 0 ] = EOS;
		mysql_format( SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `StatusPlayer` = 'logON' WHERE `ID` = '%d'", getDatabaseID( playerid ) );
		mysql_tquery( SQL, gQuery, "", "");

		gQuery[ 0 ] = EOS;
		mysql_format(SQL, gQuery, sizeof gQuery, "SELECT * FROM `accs` WHERE `Userid`='%d' LIMIT 20", playerVariables[playerid][pSQL]);
		mysql_tquery(SQL, gQuery, "loadPlayerAccs", "i", playerid);
		if(playerVariables[playerid][pPhone] != 0) Iter_Add(server_phones, playerid);
		loadPlayerBattlepass(playerid);
		loadDailyQuests(playerid);
		// loadSkinsData(playerid);
		#if defined CARTEL_QUEST 
			loadPlayerQuest(playerid); 
		#endif

		#if defined VDAY 
			loadPlayerQuest(playerid); 
		#endif

		/*============================================ END DATA LOAD ============================================*/

		stop loginTimer[playerid];
		TextDrawShowForPlayer(playerid, td_sv_name[0]);
		TextDrawShowForPlayer(playerid, td_sv_name[1]);
		new name[32];
 
        gQuery[ 0 ] = EOS;
        mysql_format(SQL, gQuery, sizeof gQuery, "SELECT * FROM cars WHERE Owner='%d'", getDatabaseID(playerid));
        mysql_tquery(SQL, gQuery, "loadPlayerVehicles", "id", playerid, getDatabaseID(playerid));
  
		PlayerTextDrawShow(playerid, td_name);
		format(name, sizeof(name), "%s", getName(playerid));
		PlayerTextDrawSetString(playerid, td_name, name);
		TextDrawShowForPlayer(playerid, Date), TextDrawShowForPlayer(playerid, Time);

		removeObjects(playerid);
		SetPlayerScore(playerid, playerVariables[playerid][pLevel]);

		SetSpawnInfo(playerid, 0, playerVariables[playerid][pSkin], 1219.7958,-1427.9757,13.3656, 1.0, -1, -1, -1, -1, -1, -1);
		//serverTeleported(playerid);
		ADeathMessage(playerid, INVALID_PLAYER_ID, 200);

		for(new i = 0; i < 20; i++) SendClientMessage(playerid, -1, "");

		SpawnPlayer(playerid);
		Iter_Remove(playersInConnect, playerid);
		isPlayerLogged[playerid] = true;
		loginAttemps[playerid] = 0;



		RemovePlayerAttachedObject(playerid, INDEX_UTILITIES);
		TogglePlayerControllableEx(playerid, true), SetCameraBehindPlayer(playerid);
		SendClientMessage(playerid, COLOR_SERVER, "Server: {ffffff}Welcome! You have successfully logged in.");
		insertLogin(playerid, true);
		updateINT(playerid, "Status", 1);
	
		if(playerVariables[playerid][pMember] > 0){
			showPlayerMotd(playerid);
			if(playerVariables[playerid][pRank]>=7) Iter_Add(Leaders, playerid);
		} 

		if(playerVariables[playerid][pAdmin] > 0 || playerVariables[playerid][pHelper] > 0)
		{
			if(playerVariables[playerid][pAdmin] > 0)
			{
				SendClientMessage(playerid, COLOR_SERVER, "Server: {ffffff}Checking your hardware differences..");

			/*	new 
					Query[95];

				mysql_format(SQL, Query, sizeof Query, "UPDATE `players` SET `LGPCI`='%s' WHERE `ID`=%d;", returnCI(playerid), getDatabaseID(playerid));
				mysql_tquery(SQL, Query, "", "");

				if(strcmp(returnCI(playerid), playerCI, true) != 0)
				{
					va_SendAdminsMessage(1, COLOR_RED, 
Admin %s received a warning(total %d) because: none", getName(playerid));
					SendClientMessage(playerid, COLOR_SERVER, "Server: {ffffff}Hardware ID rejected! Please contact an owner to solve your problem.");
					KickEx(playerid);
					return true;
				}
				else SendClientMessage(playerid, COLOR_SERVER, "Server: {ffffff}Hardware ID accepted! Have a good game.");*/

				new 
					adminsAFK;

				foreach(new i : Admins) if(playerAFK[i]) adminsAFK ++;

				Iter_Add(Admins, playerid);
				Iter_Add(Leaders, playerid);
				SendFormatMessage(playerid, -1, "You are a level %d admin. There are %d admins online (%d AFK).", 
					playerVariables[playerid][pAdmin], Iter_Count(Admins), adminsAFK);
				// Dialog_Show(playerid, DIALOG_ADMIN_KEY, DIALOG_STYLE_PASSWORD, "Admin Security:", "Write your personal admin password below!", "Submit", "Cancel");

			}
			if(playerVariables[playerid][pHelper] > 0) Iter_Add(Helpers, playerid);

			format(sString, 58, "(%s) HelloBot: %s just logged in!", 
				playerVariables[playerid][pAdmin] > 0 ? ("A") : ("H"), getName(playerid));

			foreach(new i : inStaff) SendClientMessage(i, COLOR_DARK_YELLOW, sString);

			Iter_Add(inStaff, playerid);
		}

		if(playerVariables[playerid][pPremium]) Iter_Add(isPremium, playerid), SendClientMessage(playerid, -1, "You are a premium user! <3");
  		if(playerVariables[playerid][pVIP]) Iter_Add(isVIP, playerid), SendClientMessage(playerid, -1, "You are a {42e6f5}VIP User{ffffff}! <3");
   		if(playerVariables[playerid][pAdmin] > 5) {
   			new str[128];
        	format(str, sizeof(str), "~r~TICK: %i ~g~PING: %d ~p~ANIM: %d ~y~MPS: %d", GetServerTickRate()+3, GetPlayerPing(playerid), GetPlayerAnimationIndex(playerid), NetStats_MessagesRecvPerSecond(playerid));
        	PlayerTextDrawSetString(playerid, ptd_admin_hud, str);
        	PlayerTextDrawShow(playerid, ptd_admin_hud);
    	}

		loadInventoryData(playerid); 
		for(new i = 0; i < 6; i++) {
			PlayerTextDrawHide(playerid, ptd_login[i]);
			// CancelSelectTextDraw(playerid);	
		}
		
		if(checkPetBenefits(playerid) == 2) SetPlayerArmourEx(playerid, 20.0), SendClientMessage(playerid, -1, "+20%% armour procents from your pet.");


		if(petVariables[playerid][petStatus]) {
			format(gString, 80, "{56FC03}Pet level. {FFF700}%d\n{F59842}%s",petVariables[playerid][petLevel], petVariables[playerid][petName]);
			petVariables[playerid][petText] = CreateDynamic3DTextLabel(gString, -1, 357.120239, 1.712298, 349.232513, 5, playerid);
		}		

		if(Event_Active > 0) for(new x = 0; x < 6; x ++) TextDrawShowForPlayer(playerid, eventTD[x]);
		if(playerVariables[playerid][pClan] > 0 ) clanCheck(playerid, true);
		checkDailyQuests(playerid);
		showBattlepassDetails(playerid);
		sendLoginMessage(playerid);
		TextDrawShowForPlayer(playerid, GoalBar);
		PlayerTextDrawShow(playerid, DailyBar);	

    	goalBar = CreatePlayerProgressBar(playerid, 253.000000, 436.000000, 127.000000, 4, -457152769, 100.0);
    	dailyBar = CreatePlayerProgressBar(playerid, 550.000000, 224.000000, 79.500000, 4, -885836289, 100.0);
		// jobBar = CreatePlayerProgressBar(playerid, 550.000000, 255.000000, 79.500000, 4, -885836289, 100.0);
		SetPlayerProgressBarValue(playerid, goalBar, serverGoal);
		SetPlayerProgressBarMaxValue(playerid, goalBar,maxGoal);
		ShowPlayerProgressBar(playerid, goalBar);	

		SetPlayerProgressBarValue(playerid, dailyBar, playerVariables[playerid][pActivityTime]);
		SetPlayerProgressBarMaxValue(playerid, dailyBar,3600);
		ShowPlayerProgressBar(playerid, dailyBar);	

		PlayerTextDrawSetString(playerid, DailyBar, "reward (%s)", getMinutes(playerVariables[playerid][pActivityTime]));
		TextDrawShowForPlayer(playerid, reward);
		// TextDrawShowForPlayer(playerid, JobBar);
		update_goal_textdraw();
		headLabel[playerid] = Create3DTextLabel("_", -1, 0.0, 0.0, 0.0, 10.0, 0);
	    if(playerVariables[playerid][pPin] == 0) {
	    	CancelSelectTextDraw(playerid);
	    	SendClientMessage(playerid, COLOR_GREY, "PIN >> {ffffff}You do not have a PIN set in your account. Use the [/setpin] command to secure your account and unlock certain accesses.");
	    }
	    else {
	    	pPinLogged[playerid] = false;
		    PlayerTextDrawSetString(playerid, pPinTD[0], "LOGIN PIN");

		    pPin_Status(playerid, true);
		    SetPVarInt(playerid, "pin_case", 2);
	    }
	    
		if(playerVariables[playerid][pWantedLevel] > 0) {
			SetPlayerWantedLevel(playerid, playerVariables[playerid][pWantedLevel]);
			va_SendClientMessage(playerid, COLOR_LIGHTRED, "Te-ai deconectat cu wanted si ti s-a atribuit Wanted Level: %d. Timp ramas: %d minute", playerVariables[playerid][pWantedLevel], playerVariables[playerid][pWantedTime] / 60 + 1);
		}
		if(GetPVarInt(playerid, "first_login") == 1) {
			va_SendClientMessage(playerid, COLOR_SERVER, "Bonus:{ffffff} Ai primit: $15,000,000 cash, un beginner crate si licenta de driving pentru doua ore!");
			GivePlayerCash(playerid, 15000000);
			playerVariables[playerid][pCrates][0] ++, saveCrates(playerid);
			playerVariables[playerid][pCrateKey] ++, updateINT(playerid, "CrateKeys", playerVariables[playerid][pCrateKey]);
			playerVariables[playerid][pLicence][0] = 2, updateLicenses(playerid);
			DeletePVar(playerid, "first_login");
		}

		// new loadString[128];

		// cache_get_field_content(0, "OrderWeapons", loadString, SQL, sizeof loadString);
		// sscanf(loadString, "a<i>[3]", PlayerInfo[playerid][pGuns]);

	
	
		new xyz = serverBonus;
    	new randomRP,randomMoney,randomPP;
    	
	    switch(Iter_Count(Player))
	    {

	        case 15: {
	            if(serverBonus >= 1) return true;
	            serverBonus = 1;
	            randomRP = 1 + random(1),randomMoney = 3000000 + random(200000),randomPP = 2 + random(3);
	        }
	        case 20: {
	            if(serverBonus >= 2) return true;
	            serverBonus = 2;
	            randomRP = 1 + random(1),randomMoney = 7000000 + random(200000),randomPP = 2 + random(3);
	        }

	        case 25: {
	            if(serverBonus >= 3) return true;
	            serverBonus = 3;
	            randomRP = 1 + random(1),randomMoney = 1300000 + random(200000),randomPP = 2 + random(3);
	        }
	        case 30: {
	            if(serverBonus >= 4) return true;
	            serverBonus = 4;
	            randomRP = 1 + random(1),randomMoney = 2000000 + random(200000),randomPP = 2 + random(3);
	        }
	        case 35: {
	            if(serverBonus >= 5) return true;
	            serverBonus = 5;
	            randomRP = 1 + random(1),randomMoney = 2500000 + random(200000),randomPP = 2 + random(3);
	        }
	        case 40: {
	            if(serverBonus >= 6) return true;
	            serverBonus = 6;
	            randomRP = 1 + random(1),randomMoney = 2700000 + random(200000),randomPP = 2 + random(3);
	        }
	    }

	    if(xyz != serverBonus)
	    {
	        foreach(new i : Player)
	        {
	            GivePlayerCash(i, randomMoney);
	            playerVariables[i][pRespect] += randomRP;
	            playerVariables[i][pPremiumPoints] += randomPP;

	            updateINT(i, "Respect", playerVariables[i][pRespect]);
	            updateINT(i, "PremiumPoints", playerVariables[i][pPremiumPoints]);
	        }
	        va_SendClientMessageToAll(COLOR_SERVER, "Server >>{FFFFFF}Server-ul a atins suma de %d jucatori online",Iter_Count(Player));
	        va_SendClientMessageToAll(COLOR_SERVER, "Server >>{FFFFFF}Ai primit: %d respect points, %s$, %d diamante", randomRP,FormatNumber(randomMoney), randomPP);
	    }
	    if(playerVariables[playerid][pLogins] <= 2 ) {
	    	new money = random(150000), rp = random(3);
	    	playerVariables[playerid][pLogins] ++, updateINT(playerid, "totalLogins", playerVariables[playerid][pLogins]);
	    	va_SendClientMessage(playerid, COLOR_SERVER, "Server >> {ffffff}Deoarece este al %d login, ai primit: $%s si %d respect points", playerVariables[playerid][pLogins], FormatNumber(money), rp);
	    	GivePlayerCash(playerid, money);
	    	playerVariables[playerid][pRespect] += rp, updateINT(playerid, "Respect", playerVariables[playerid][pRespect]);
	    	
	    }

		new logs[256];
		format(logs, sizeof(logs), "%s has connected [cash: $%s] [bank: $%s] [PP: %d] [Level: %d] [hours: %.2f]')", getNameEx(playerid), FormatNumber(playerVariables[playerid][pCash]), FormatNumber(playerVariables[playerid][pBank]), playerVariables[playerid][pPremiumPoints], playerVariables[playerid][pLevel], playerVariables[playerid][pHours]);
		insertConnectLog(playerid, logs);
		
		if(playerVariables[playerid][pActivityTime] == 0) SendClientMessage(playerid, COLOR_SERVER, "Daily Activity: {ffffff}Foloseste comanda [/reward] pentru a colecta bonusul pentru activitate!");
		updateLabel(playerid);

	}
	
	return true;
}

function final_Register(playerid) {

	if(playerVariables[playerid][pRegistred] == 3) return true;

	gQuery[0] = EOS;

	mysql_format(SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `Skin`=170, `Registred`='3', `StatusPlayer` = 'logON' WHERE `ID`=%d", getDatabaseID(playerid));
	mysql_tquery(SQL, gQuery, "", "");

	new 
		String[54];
	SetPVarInt(playerid, "first_login", 1);
	format(String, sizeof String, "New account: %s [user: %d]", getNameEx(playerid), getDatabaseID(playerid));
	SendAdminsMessage(COLOR_RED, 1, String);
	
	//Dialog_Show(playerid, DIALOG_LOGIN, DIALOG_STYLE_PASSWORD, "Server: Login", "Account registred successfully!\nEnter your password below to login.", "Login", "Close");
	playerVariables[playerid][pRegistred] = 3;

	loginCamera(playerid);

	for(new i = 0; i < 6; i++) {
		PlayerTextDrawShow(playerid, ptd_login[i]);
		new string[64];
		cache_get_value_name_int(0, "ID", playerVariables[playerid][pSQL]);
		cache_get_value_name_int(0, "Skin", playerVariables[playerid][pSkin]);
		format(string, sizeof string, "%s~n~(%d)", getNameEx(playerid), getDatabaseID(playerid));
		PlayerTextDrawSetString(playerid, ptd_login[3], string);
		PlayerTextDrawSetPreviewModel(playerid, ptd_login[2], playerVariables[playerid][pSkin]);
		SelectTextDraw(playerid, COLOR_SERVER);		
	}
	return true;

}

function insertLogin(playerid, bool: status) 
{
	new 
		Query[100];

	mysql_format(SQL, Query, sizeof Query, "INSERT INTO `logs_login` (`Player`, `IP`, `Status`) VALUES (%d, '%s', %d)", getDatabaseID(playerid), getPlayerIp(playerid), status ? 1 : 0);
	mysql_tquery(SQL, Query, "", "");

	return true;
}

function insertPlayerLog(playerid, const log[], type) 
{
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "INSERT INTO `logs_player` (`Player`, `Log`, `IP`, `Type`) VALUES (%d, '%e', '%s', %d)", getDatabaseID(playerid), log, getPlayerIp(playerid), type);
	mysql_tquery(SQL, gQuery, "", "");

	return true;
}

function insertChatLog(playerid, const log[])
{
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "INSERT INTO `logs_chat` (`Player`, `Log`) VALUES (%d, '%e')", getDatabaseID(playerid), log);
	mysql_tquery(SQL, gQuery, "", "");

	return true;
}

function insertConnectLog(playerid, const log[])
{
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "INSERT INTO `logs_connect` (`Player`, `Log`) VALUES (%d, '%e')", getDatabaseID(playerid), log);
	mysql_tquery(SQL, gQuery, "", "");

	return true;
}
function insertDisconnectLog(playerid, const log[])
{
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "INSERT INTO `logs_disconnect` (`Player`, `Log`) VALUES (%d, '%e')", getDatabaseID(playerid), log);
	mysql_tquery(SQL, gQuery, "", "");

	return true;
}
function onPlayerRegister(playerid)
{
	stop loginTimer[playerid];
	playerVariables[playerid][pSQL] = cache_insert_id();
	Dialog_Show(playerid, DIALOG_REGISTER_EMAIL, DIALOG_STYLE_INPUT, "Server: Register - Email", "Enter your email address below.\nYou will use this to reset/recover your password when you want!", "Next", "Close");

	return true;
}

updateLicenses(playerid) {

	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `Licenses`='%d|%d|%d|%d' WHERE `ID`=%d;", 
		playerVariables[playerid][pLicence][0], playerVariables[playerid][pLicence][1], playerVariables[playerid][pLicence][2], 
		playerVariables[playerid][pLicence][3], getDatabaseID(playerid));
	mysql_tquery(SQL, gQuery, "", "");

	return true;
}

saveDiamonds(playerid)
{
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `Diamonds`='%d|%d|%d' WHERE `ID`=%d;", 
		playerVariables[playerid][pDiamonds][0], playerVariables[playerid][pDiamonds][1], playerVariables[playerid][pDiamonds][2], getDatabaseID(playerid));
	mysql_tquery(SQL, gQuery, "", "");
	return true;
}
saveVouchers(playerid)
{
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `Vouchers`='%d|%d|%d|%d|%d' WHERE `ID`=%d;", 
		playerVariables[playerid][pVouchers][0], playerVariables[playerid][pVouchers][1], playerVariables[playerid][pVouchers][2], playerVariables[playerid][pVouchers][3], playerVariables[playerid][pVouchers][4], getDatabaseID(playerid));
	mysql_tquery(SQL, gQuery, "", "");
	return true;
}
savePerks(playerid)
{
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `Perks`='%d|%d|%d|%d' WHERE `ID`=%d;", 
		playerVariables[playerid][pPerks][0], playerVariables[playerid][pPerks][1], playerVariables[playerid][pPerks][2], playerVariables[playerid][pPerks][3], getDatabaseID(playerid));
	mysql_tquery(SQL, gQuery, "", "");
	return true;
}
saveShampanges(playerid)
{
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `Shampange`='%d|%d|%d' WHERE `ID`=%d;", 
		playerVariables[playerid][pShampange][0], playerVariables[playerid][pShampange][1], playerVariables[playerid][pShampange][2], getDatabaseID(playerid));
	mysql_tquery(SQL, gQuery, "", "");
	return true;
}
saveFireworks(playerid)
{
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `FireWorks`='%d|%d' WHERE `ID`=%d;", 
		playerVariables[playerid][pFireWorks][0], playerVariables[playerid][pFireWorks][1], getDatabaseID(playerid));
	mysql_tquery(SQL, gQuery, "", "");
	return true;
}

saveOres(playerid)
{
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `Ores`='%d|%d|%d' WHERE `ID`=%d;", 
		playerVariables[playerid][pOres][0], playerVariables[playerid][pOres][1], playerVariables[playerid][pOres][2], getDatabaseID(playerid));
	mysql_tquery(SQL, gQuery, "", "");

	return true;
}

saveNeons(playerid)
{
	new 
		Query[110];

	mysql_format(SQL, Query, sizeof Query, "UPDATE `players` SET `Neons`='%d|%d|%d|%d|%d|%d' WHERE `ID`=%d;", 
		playerVariables[playerid][pNeons][0], playerVariables[playerid][pNeons][1], playerVariables[playerid][pNeons][2], 
		playerVariables[playerid][pNeons][3], playerVariables[playerid][pNeons][4], playerVariables[playerid][pNeons][5], getDatabaseID(playerid));
	mysql_tquery(SQL, Query, "", "");
}
giveGems(playerid, amount)
{
	SendFormatMessage(playerid, COLOR_GREEN, ">> {ffffff}%d gems after this action!", amount);
	playerVariables[playerid][pGems] += amount;
	updateINT(playerid, "Gems", playerVariables[playerid][pGems]);

	return true;
}
giveTickets(playerid, amount) {
	SendFormatMessage(playerid, COLOR_GREEN, ">> {ffffff}%d tickets after this action!", amount);
	TicketPoints[playerid] += amount;
	updateINT(playerid, "TicketPoints", TicketPoints[playerid]);	
}

function updateINT(playerid, const varname[], amount) {

	if(playerid == INVALID_PLAYER_ID || !isPlayerLogged[playerid]) return true;

	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `%s`=%d WHERE `ID`=%d;", varname, amount, getDatabaseID(playerid));
	mysql_tquery(SQL, gQuery, "", "");

	return true;
}

#include <../../server/dialogs>
#include <../../server/functions>

#include <../../server/publics>
#include <../../server/stocks>
#include <../../server/undef_stocks>
#include <../../server/timers>