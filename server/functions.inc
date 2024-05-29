#include <YSI_Coding\y_hooks>

function loadGoal() {
	new numRows = cache_num_rows();

	for(new i, j = numRows; i != j; ++i) {		
		cache_get_value_name_int(i, "serverGoal", serverGoal);
		cache_get_value_name_int(i, "servermaxGoal", maxGoal);
	}
	printf("Goal: $%d", serverGoal);
	return true;
}
function kickPlayer(playerid, const reason[]) {

	if(GetPVarInt(playerid, "gotKicked")) return true;

	SendClientMessage(playerid, COLOR_RED, reason);
	SetPVarInt(playerid, "gotKicked", 1);
	KickEx(playerid);

	return true;
}
function updateLabel(playerid) {
    new Float:up=0.1;
    headUpString[0] = EOS;
    if(playerVariables[playerid][pPremium] == 1) strcat(headUpString, "{FFFF00}PREMIUM\n"), up+=0.1;
    if(playerVariables[playerid][pVIP] == 1) strcat(headUpString, "{42e6f5}VIP\n"), up+=0.2;
  
    if(playerVariables[playerid][pReclamer] > 0) format(headUpString, sizeof headUpString, "%s{CE6911}RECLAMER %d\n", headUpString, playerVariables[playerid][pReclamer]), up+=0.3;
    Update3DTextLabelText(headLabel[playerid], -1, headUpString);

   	Attach3DTextLabelToPlayer(headLabel[playerid], playerid, 0.0, 0.0, up);
    return true;
}

function GivePlayerCash(playerid, amount) {

 	new query[65];		

	playerVariables[playerid][pCash] += amount;

	mysql_format(SQL, query, sizeof query, "UPDATE `players` SET `Cash`=%d WHERE `ID`=%d;", 
		playerVariables[playerid][pCash], getDatabaseID(playerid));
	mysql_tquery(SQL, query, "", "");

	return true;
}

function AdminBroadCast( adminLevel, text_color, text[], {Float, _}:...)
{
	#define BYTES_PER_CELL 4
	static const STATIC_ARGS = 3;
	new n = (numargs() - STATIC_ARGS) * BYTES_PER_CELL;
	if( n )
	{
		new
			arg_start,
			arg_end,
			buffer[256];

		#emit CONST.alt		text
		#emit LCTRL			5
		#emit ADD
		#emit STOR.S.pri	arg_start

		#emit LOAD.S.alt	n
		#emit ADD
		#emit STOR.S.pri	arg_end

		do
		{
			#emit LREF.S.pri arg_end
			#emit PUSH.pri
			arg_end -= BYTES_PER_CELL;
		}
		while (arg_end > arg_start);

		#emit PUSH.S		text
		#emit PUSH.C		256
		#emit PUSH.ADR		buffer

		n += BYTES_PER_CELL * 3;
		#emit PUSH.S		n
		#emit SYSREQ.C		format

		n += BYTES_PER_CELL;
		#emit LCTRL			4
		#emit LOAD.S.alt	n
		#emit ADD
		#emit SCTRL			4

		foreach( new i : Admins )
			if( playerVariables[ i ][ pAdmin ] >= adminLevel )
				SendClientMessage( i, text_color, buffer );
	}
	else
	{
		foreach( new i : Admins )
			if( playerVariables[ i ][ pAdmin ] >= adminLevel )
				SendClientMessage( i, text_color, text );
	}
	return true;
}

function PlayerToPoint(Float: radius, playerid, Float: X, Float: Y, Float: Z) {

	new 
		Float: oldPosX,
		Float: oldPosY,
		Float: oldPosZ;

	GetPlayerPos(playerid, oldPosX, oldPosY, oldPosZ);

	if((((oldPosX - X) < radius) && ((oldPosX - X) > -radius)) && (((oldPosY - Y) < radius) && ((oldPosY - Y) > -radius)) && (((oldPosZ - Z) < radius) && ((oldPosZ - Z) > -radius))) 
		return true;

	return false; }
function Float:GetPlayerDistanceFromPlayer(playerid, id)
{
	if(!IsPlayerConnected(playerid) && !IsPlayerConnected(id)) return -1.00;
	return floatsqroot(floatpower(floatabs(floatsub(playerVariables[playerid][playerPosX], playerVariables[id][playerPosX])), 2) + floatpower(floatabs(floatsub(playerVariables[playerid][playerPosY], playerVariables[id][playerPosY])), 2) + floatpower(floatabs(floatsub(playerVariables[playerid][playerPosZ], playerVariables[id][playerPosZ])), 2));
}

timeLeft(time) { 
	if(time < 1) time = 0;
	return time - gettime();
}


function loadOtherData()
{
	new 
		tmpResult[30],
		tmpStr[30];

	cache_get_value_name_int(0, "Donations", totalDonations);

	cache_get_value_name(0, "Crates", tmpResult); format(tmpStr, sizeof tmpStr, tmpResult);
	sscanf(tmpStr, "p<|>iii", crateStock[0], crateStock[1], crateStock[2]);

	cache_get_value_name(0, "EnigmaQuest", tmpResult); format(tmpStr, sizeof tmpStr, tmpResult);
	sscanf(tmpStr, "p<|>iiii", questStock[0], questStock[1], questStock[2], questStock[3]);

	loadCrates();
	_load_Mayor_Data();

	return true;
}
function ADeathMessage(playerid, killerid, reason)
{
	foreach(new i : Admins) SendDeathMessageToPlayer(i, killerid, playerid, reason);
	return true;
}
function BigEarMessage(playerid, const message[], const log_from[])
{
    foreach(new x : Admins)
    {
        if(bigEar[x] < 1 )
           continue;

        gString[0] = EOS;
        format(gString, sizeof gString, "%s (%s LOG) %s", getName(playerid), log_from, message);
        SendClientMessage(x, 0xffc400ff, gString);
    }
    return true;
}

function insertPunishLog(player, type, const log[], by)
{
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "INSERT INTO `logs_sanctions` (`Player`, `Type`, `Log`, `By`) VALUES (%d, %d, '%e', %d)", player, type, log, by);
	mysql_tquery(SQL, gQuery, "", "");
	return true;
}



function insertPlayerEmail(const name[], const email[])
{
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "INSERT INTO `emails` (`Player`, `Email`) VALUES ('%s', '%e')", name, email);
	mysql_tquery(SQL, gQuery, "", "");

	return true;
}
function MadeAdds(const text[])
{
	if(strfind(text, "u-network", true) != -1 || strfind(text, "unnic", true) != -1 || strfind(text, "ne-am mutat pe rpg.", true) != -1 || strfind(text, "t4p", true) != -1 || strfind(text, "og-times", true) != -1 ||
		strfind(text, "famzone", true) != -1 || strfind(text, "union-zone", true) != -1 || strfind(text, "gfzone", true) != -1 || strfind(text, "pro-gaming", true) != -1 || strfind(text, "playnion", true) != -1 || strfind(text, "just2play", true) != -1 ||
		strfind(text, "b-game", true) != -1 || strfind(text, "b-gaming", true) != -1 || strfind(text, "egaming", true) != -1 || strfind(text, "diavola", true) != -1 || strfind(text, "rigged", true) != -1 || strfind(text, "skilledz", true) != -1 ||
		strfind(text, "bugged", true) != -1 || strfind(text, "b-zone", true) != -1 || strfind(text, "b-zone", true) != -1 || strfind(text, "nolimit", true) != -1 || strfind(text, "nqgaming", true) != -1 || strfind(text, "forteam", true) != -1 ||
		strfind(text, "t4p", true) != -1 || strfind(text, "time4play", true) != -1 || strfind(text, "redgame", true) != -1 || strfind(text, "blue-game", true) != -1 || strfind(text, "egaming", true) != -1 || strfind(text, "bigzone", true) != -1 ||
		strfind(text, "evil-zone", true) != -1 || strfind(text, "expertgame", true) != -1 || strfind(text, "redgame", true) != -1 || strfind(text, "red-game", true) != -1 || strfind(text, "ULTRAPHASE", true) != -1 || strfind(text, "gameforplay", true) != -1 ||
		strfind(text, ":7777", true) != -1 || strfind(text, "193.", true) != -1 || strfind(text, "redtimes", true) != -1 || strfind(text, "charged", true) != -1 || strfind(text, "rumble", true) != -1 || strfind(text, "rpg.", true) != -1 || 
		strfind(text, "nephrite", true) != -1 || strfind(text, "ruby", true) != -1 || strfind(text, "b-zone", true) != -1 || strfind(text, "hgame", true) != -1 || strfind(text, "vauxite", true) != -1 || strfind(text, "eclipsed", true) != -1 ||
		strfind(text, "moon", true) != -1 || strfind(text, "89.41.176", true) != -1 || strfind(text, "193.203.39", true) != -1 || strfind(text, "89.46.123", true) != -1 || strfind(text, "188.212.102", true) != -1 || strfind(text, "crowland", true) != -1) return 1;
	
	return false;
}