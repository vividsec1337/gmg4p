#include <YSI_Coding\y_hooks>

pPin_Status(const playerid, bool: bStatus)
{
    if(bStatus == false)
    {
        TogglePlayerControllable(playerid, true);

        for(new i, j = sizeof gPinTD; i < j; i++)
            TextDrawHideForPlayer(playerid, gPinTD[i]);

        PlayerTextDrawHide(playerid, pPinTD[0]);
        PlayerTextDrawHide(playerid, pPinTD[1]);
        CancelSelectTextDraw(playerid);

        DeletePVar(playerid, "pin_text");
        b_ShowPin[playerid] = false;
        return true;
    }

    TogglePlayerControllable(playerid, false);

    for(new i, j = sizeof gPinTD; i < j; i++)
        TextDrawShowForPlayer(playerid, gPinTD[i]);

    PlayerTextDrawShow(playerid, pPinTD[0]);
    PlayerTextDrawShow(playerid, pPinTD[1]);
    SelectTextDraw(playerid, COLOR_SERVER);

    SetPVarString(playerid, "pin_text", "");
    b_ShowPin[playerid] = true;
    return true;
}


pPin_Update(const playerid)
{
    new szPin[6];
    GetPVarString(playerid, "pin_text", szPin, sizeof szPin);

	if(strlen(szPin) == 0) PlayerTextDrawSetString(playerid, pPinTD[1], "");
	else if(strlen(szPin) == 1) PlayerTextDrawSetString(playerid, pPinTD[1], "[]");
	else if(strlen(szPin) == 2) PlayerTextDrawSetString(playerid, pPinTD[1], "[[]]");
	else if(strlen(szPin) == 3) PlayerTextDrawSetString(playerid, pPinTD[1], "[[[]]]");
	else if(strlen(szPin) == 4) PlayerTextDrawSetString(playerid, pPinTD[1], "[[[[]]]]");
	return 1;
}
vehEngineStatus(playerid) {

	new 
		engineTime = GetPVarInt(playerid, "engineDeelay"), 
		vehicleid = GetPlayerVehicleID(playerid);

	if(IsABike(vehicleid)) return true;
	if(timeLeft(engineTime) > 0) return SendDeelayMessage(playerid, -1, "Please wait %d seconds..", timeLeft(engineTime));
	if(!vehicleFuel[vehicleid]) return GameTextForPlayer(playerid, "out of fuel!", 3000, 4);

	new 
		engine, lights, alarm, doors, bonnet, boot, objective,
		String[100],
		playerName[MAX_PLAYER_NAME];

	GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);

	if(!engine) SetVehicleParamsEx(vehicleid, VEHICLE_PARAMS_ON, lights, alarm, doors, bonnet, boot, objective), vehicleEngine[vehicleid] = 1;
	else SetVehicleParamsEx(vehicleid, VEHICLE_PARAMS_OFF, lights, alarm, doors, bonnet, boot, objective), vehicleEngine[vehicleid] = 0;

	GetPlayerName(playerid, playerName, sizeof playerName);
	format(String, sizeof String, "* %s %s the engine of his %s.", GetPVarInt(playerid, "Undercover_ON") ? ("Someone") : playerName, engine ? ("stops") : ("starts"), getModelName(GetVehicleModel(vehicleid)));
	SendCloseMessage(playerid, COLOR_PURPLE, String);

	SetPVarInt(playerid, "engineDeelay", gettime() + 3);

	return true;
}



setPlayerCheckpointEx(playerid, Float: X, Float: Y, Float: Z, Float: size, checkpointid)
{
	playerCheckpoint[playerid] = checkpointid;
	SetPlayerCheckpoint(playerid, X, Y, Z, size);

	checkpointX[playerid] = X;
	checkpointY[playerid] = Y;
	checkpointZ[playerid] = Z;

	return true;
}

GetWeekDay(day = 0, month = 0, year = 0)
{
	if(!day) getdate(year, month, day);
	new weekday_str[10], j, e;
	if(month <= 2) {
		month += 12;
		--year;
	}

	j = year % 100;
	e = year / 100;

	switch((day + (month + 1) * 26 / 10 + j + j / 4 + e / 4 - 2 * e) % 7) {
		case 0: weekday_str = "Saturday";
		case 1: weekday_str = "Sunday";
		case 2: weekday_str = "Monday";
		case 3: weekday_str = "Tuesday";
		case 4: weekday_str = "Wednesday";
		case 5: weekday_str = "Thursday";
		case 6: weekday_str = "Friday";
	}
	return weekday_str;
}

getNameEx(playerid)
{
	new 
		playerName[MAX_PLAYER_NAME];

	GetPlayerName(playerid, playerName, sizeof playerName);

	return playerName;
}

getPlayerIp(playerid)
{
	new 
		playerIp[16];

	GetPlayerIp(playerid, playerIp, sizeof playerIp);

	return playerIp;
}



IsNumeric(const string[])
{
	for(new i = 0, j = strlen(string); i < j; i++) if(string[i] > '9' || string[i] < '0') return false;

	return true;
}



teleportSurfPlayers(playerid, virtualid, interiorid) {

	if(IsPlayerInAnyVehicle(playerid)) {

		foreach(new i : Player) {

			if(i != playerid) {

				if(GetPlayerVehicleID(i) == GetPlayerVehicleID(playerid) || GetPlayerSurfingVehicleID(i) == GetPlayerVehicleID(playerid)) {

					SetPlayerInterior(i, interiorid);
					SetPlayerVirtualWorld(i, virtualid);

				}

			}

		}

	}

	return true;
}



lockVehicle(playerid) {

	new 
		vehicleid;

	if(IsPlayerInAnyVehicle(playerid)) vehicleid = GetPlayerVehicleID(playerid);
	else vehicleid = GetClosestVehicle(playerid);

	if(vehicleid == INVALID_VEHICLE_ID) return true;

	if(!IsPlayerNearVehicle(playerid, vehicleid, 5) && !IsABoat(vehicleid)) return true;
	else if(!IsPlayerNearVehicle(playerid, vehicleid, 10) && IsABoat(vehicleid)) return true;

	if(isJobVehicle(playerid, vehicleid) || isPlayerVehOwner(playerid, vehicleid) || rentVehicle[playerid] == vehicleid) {

		new 
			engine, lights, alarm, doors, bonnet, boot, objective,
			String[35];

		GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
		SetVehicleParamsEx(vehicleid, engine, lights, alarm, !doors, bonnet, boot, objective);

		format(String, sizeof String, "~h~%s~n~%s", 
			getModelName(GetVehicleModel(vehicleid)), doors ? ("~g~unlocked") : ("~r~locked"));
		GameTextForPlayer(playerid, String, 3000, 4);
		PlayerPlaySound(playerid, 1145, 0.0, 0.0, 0.0);

		if(getPlayerVehicle(vehicleid) > 0) changeCarStatus(getPlayerVehicle(vehicleid));

	}

	return true;
}



havePlayerCheckpoint(playerid) return playerCheckpoint[playerid] != CHECKPOINT_NONE ? true : false;

setTeamColor(playerid)
{
	if(isCop(playerid) && !playerVariables[playerid][pDuty]) return SetPlayerColor(playerid, 0xffffffff);
	switch(playerVariables[playerid][pMember])
	{
		case 0: SetPlayerColor(playerid, 0xffffffff);
		case 1: SetPlayerColor(playerid, 0x0049d0ff);
		case 2: SetPlayerColor(playerid, 0x005affff);
		case 3: SetPlayerColor(playerid, 0x00006AFF);
		case 4: SetPlayerColor(playerid, 0x45964cff);
		case 5: SetPlayerColor(playerid, 0xf0b93aFF);
		case 6: SetPlayerColor(playerid, 0x2e2e2eFF);
		case 7: SetPlayerColor(playerid, 0x8BE181ff);
		case 8: SetPlayerColor(playerid, 0x7e3937ff);
		case 9: SetPlayerColor(playerid, 0xD7CE96FF);
		case 10: SetPlayerColor(playerid, 0xF29D9DFF);
	}

	return true;
}
isPlayerInArea(playerid, Float:MinX, Float:MinY, Float:MaxX, Float:MaxY) {
	new Float:X, Float:Y, Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	if(X >= MinX && X <= MaxX && Y >= MinY && Y <= MaxY) return true;
	return false;
}
recallFindLocation(playerid)
{
	if(Spectate[targetFind[playerid]] != INVALID_PLAYER_ID)
	{
		DisablePlayerCheckpointEx(playerid);
		targetFind[playerid] = INVALID_PLAYER_ID;
		DeletePVar(playerid, "lastSkinFind");
		PlayerTextDrawHide(playerid, findTD[playerid][0]), PlayerTextDrawHide(playerid, findTD[playerid][1]);
		SendClientMessage(playerid, COLOR_GREY, "That player is busy (admin on duty).");

		return true;
	}

	new 
		targetid = targetFind[playerid],
		Float: X,
		Float: Y,
		Float: Z,
		String[100];

	GetPlayerPos(targetid, X, Y, Z);
	DisablePlayerCheckpoint(playerid);

	if(getPlayerHouse(targetid) > 0) setCheckpointToHouse(playerid, getPlayerHouse(targetid), 5.0, CHECKPOINT_DEFAULT);
	else if(getPlayerBiz(targetid) > 0) setCheckpointToBiz(playerid, getPlayerBiz(targetid), 5.0, CHECKPOINT_DEFAULT);
	else if(getPlayerHQ(targetid) > 0) setCheckpointToHQ(playerid, getPlayerHQ(targetid), 5.0, CHECKPOINT_DEFAULT);
	else setPlayerCheckpointEx(playerid, X, Y, Z, 5.0, CHECKPOINT_DEFAULT);

	if(Player_HIT[playerid] == targetid) format(String, sizeof String, "Target:_%s_(id:_%d)~n~Distance:_%0.2fm~n~Status:_%s", 
		getName(targetid), targetid, GetPlayerDistanceFromPoint(playerid, checkpointX[playerid], checkpointY[playerid], checkpointZ[playerid]), 
		GetPlayerState(targetid) == PLAYER_STATE_DRIVER ? ("in_vehicle") : ("on_foot"));
	else format(String, sizeof String, "Name:_%s_(id:_%d)~n~Distance:_%0.2fm", 
		getName(targetid), targetid, GetPlayerDistanceFromPoint(playerid, checkpointX[playerid], checkpointY[playerid], checkpointZ[playerid]));

	PlayerTextDrawSetString(playerid, findTD[playerid][0], String);
	if(GetPlayerSkin(targetid) != GetPVarInt(playerid, "lastSkinFind")) PlayerTextDrawSetPreviewModel(playerid, findTD[playerid][1], GetPlayerSkin(targetid));
	PlayerTextDrawShow(playerid, findTD[playerid][0]), PlayerTextDrawShow(playerid, findTD[playerid][1]);
	if(!GetPVarInt(playerid, "lastSkinFind")) SetPVarInt(playerid, "lastSkinFind", GetPlayerSkin(targetid));

	return true;
}
resetTaxiRequest(playerid)
{
	Set_CP[playerid][0] = Set_CP[playerid][1] = Set_CP[playerid][2] = 0;
	SetPVarInt(playerid, "from_ID", INVALID_PLAYER_ID);

	return true;
}
update_job_goal(playerid, money) {
	serverGoal += money;
	if(serverGoal >= maxGoal)
	{
		serverGoal = 0;
		new 
			rand_rp = 2 + random(3), rand_money = 3000000 + random(1200000), rand_pp = 1;
		va_SendClientMessageToAll(COLOR_SERVER, "(Job Goal): {FFFFFF}am fost umplut, toti jucatorii ce sunt online si au contribuit cu $1,000,000 au primit:");
		va_SendClientMessageToAll(COLOR_SERVER, "Global Goal: {ffffff}$%s", FormatNumber(rand_money));
		va_SendClientMessageToAll(COLOR_SERVER, "Global Goal: {ffffff}%d Diamonds.", rand_pp);
	
		va_SendClientMessageToAll(COLOR_SERVER, "Global Goal: {ffffff}%d RP.", rand_rp);
		createAirDrop();
		foreach(new i : Player)
		{
			if(playerVariables[i][pGoalCont] > 1000000) {
				GivePlayerCash(i, rand_money);
				giveTaskProgress(i, BP_QUEST_GLOBAL_GOAL, rand_money);
				playerVariables[i][pRespect] += rand_rp;
				playerVariables[i][pPremiumPoints] += rand_pp;
				playerVariables[i][pGoalCont] = 0;
				updateINT(i, "PremiumPoints", playerVariables[i][pPremiumPoints]);
				updateINT(i, "Respect", playerVariables[i][pRespect]);
				updateINT(i, "GoalContribution", playerVariables[i][pGoalCont]);
			}
			
		}
	
	}
	gQuery[0] = (EOS);
	mysql_format(SQL, gQuery, sizeof gString, "UPDATE `jobgoal` SET `serverGoal` = '%d'", serverGoal);
	mysql_tquery(SQL, gQuery, "", "");	
	update_goal_textdraw();
	return 1; 
}	
update_goal_textdraw() {
	gQuery[0] = (EOS);					
	foreach(new i : Player) {
		SetPlayerProgressBarValue(i, goalBar, serverGoal);
		SetPlayerProgressBarMaxValue(i, goalBar,maxGoal);
		ShowPlayerProgressBar(i, goalBar);			
	}															
																																																																																																																	
	format(gQuery, 96, "global goal~n~$%s/~g~$%s",FormatNumber(serverGoal), FormatNumber(maxGoal));
	TextDrawSetString(GoalBar, gQuery); 
}

finishHit(playerid, hitid, reason)
{
	if(playerVariables[hitid][pHeadValue] > 0 && playerVariables[playerid][pMember] == 8 && Player_HIT[playerid] == hitid)
	{
		new string[138];
		if(!GetPVarInt(playerid, "Undercover_ON")) format(string, sizeof string, "%s failed to complete the contract on %s, reason: not undercover.", getName(playerid), getName(hitid));
		else if(!GetPVarInt(playerid, "PhoneOffline") && playerVariables[hitid][pPhone] > 0) format(string, sizeof string, "%s failed to complete the contract on %s, reason: phone turned on.", getName(playerid), getName(hitid));
		else if(GetPlayerDistanceFromPlayer(hitid, playerid) < 100 && reason != WEAPON_KNIFE) format(string, sizeof string, "%s failed to complete the contract on %s, reason: distance.", getName(playerid), getName(hitid));
		else {
			giveRaportPoint(playerid, 0);
			giveTaskProgress(playerid, BP_QUEST_CONTRACT, 1);
			GivePlayerCash(playerid, playerVariables[hitid][pHeadValue]);
			format(string, sizeof string, "%s has succesfully completed the contract on %s for $%s, distance: %0.2fm.", getName(playerid), getName(hitid), FormatNumber(playerVariables[hitid][pHeadValue]), GetPlayerDistanceFromPlayer(hitid, playerid));
		}
		SendFamilyMessage(8, COLOR_TEAL, string);
		playerVariables[hitid][pHeadValue] = 0, updateINT(hitid, "HeadValue", 0);
		Player_HIT[playerid] = INVALID_PLAYER_ID, Used_Contract[hitid] = INVALID_PLAYER_ID;
		DeletePVar(playerid, "Undercover_ON"), PlayerTextDrawHide(playerid, undercoverTD[playerid]);
		foreach(new i : Player) ShowPlayerNameTagForPlayer(i, playerid, true);
		DisablePlayerCheckpointEx(playerid), targetFind[playerid] = INVALID_PLAYER_ID;
		PlayerTextDrawHide(playerid, findTD[playerid][0]), PlayerTextDrawHide(playerid, findTD[playerid][1]);
		DeletePVar(playerid, "lastSkinFind");
	}

	return true;
}