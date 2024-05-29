#include <YSI_Coding\y_hooks>

#include <system/objects>
public OnGameModeInit() {

	//======== MYSQL CONNECTION ========//
	databaseConnection();
	//==================================//

	new 
		Day, Month, Year,
		Hour, Minute;

	gettime(Hour, Minute);
	getdate(Year, Month, Day);
	
	format(SERVER_VERSION, sizeof SERVER_VERSION, "game4play, %d %s %d (%s%d:%s%d)", Day, versionMonth[Month - 1], Year, 
		(Hour < 10) ? ("0") : (""), Hour, (Minute < 10) ? ("0") : (""), Minute);
	
	SetGameModeText(SERVER_VERSION);

	AddPlayerClass(0, 1219.7958,-1427.9757,13.3656,1.1750, 0, 0, 0, 0, 0, 0);
	ManualVehicleEngineAndLights();
	DisableInteriorEnterExits();
	AllowInteriorWeapons(1);
	UsePlayerPedAnims();
	EnableStuntBonusForAll(0);
	ShowPlayerMarkers(2);
	SetNameTagDrawDistance(35.0);
	defaultSkins = LoadModelSelectionMenu("skins.txt");
	fast_event_active = 0;
	trivia_event = 0;
	trivia = "NULL";
	fast_event_word = "pula";
	gQuery[ 0 ] = EOS;
	mysql_format( SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `StatusPlayer` = 'logOFF'");
	mysql_tquery( SQL, gQuery, "", "");
	for(new r_i; r_i < MAX_RENT_MODELS; r_i ++) Rent_Available[r_i] = 20;
	// CA_Init();
	SetWorldTime(Hour);
	// loadPhoneTextdraws();
	loadDynamicObjects();
	
	loadObjects();
	createTextdraws();
	crateTextdraws();
	
	#if defined CARTEL_QUEST
	loadQuestTextdraws();
	#endif
	Iter_Init(vehicleStreamed);
	serverTimer[0] = generalTimer();
	serverTimer[1] = secondTimer();
	serverTimer[2] = tenMinutesTimer();
	serverTimer[3] = vehicleTimer();
	loadGibson();

	CreateDynamicObject( 19474, 2144.18799, 1637.89160, 993.02258,   0.00000, 0.00000, 90.06000 ); // MASA
	CreateDynamic3DTextLabel("Driving School\nUse /exam to get your licence!", 0xFFFF00D1, 1286.8000,-1329.0944,13.5549, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0); //DMV
	CreateDynamicPickup(1581, 23, 1286.8000,-1329.0944,13.5549, -1, -1, -1, 50.0); //DMV
	CreateDynamicMapIcon(1286.8000,-1329.0944,13.5549, 24, -1, 0, 0, -1, 100.0);
	CreateDynamic3DTextLabel("Spin Location\nUse /spin to test your luck!", 0xFFFF00D1, 145.1094,-1961.1942,3.7734, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 10.0); //DMV
	CreateDynamicPickup(2324, 23, 145.1094,-1961.1942,3.7734, -1, -1, -1, 50.0);

	
	CreateDynamic3DTextLabel("GYM\nPress F/ENTER to enter!", -1, 2229.9099, -1721.2657, 13.5614, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, 6, -1, 10.0); //GYM
	CreateDynamicPickup(2916, 23, 2229.9099, -1721.2657, 13.5614, -1, -1, -1, 50.0);

	Create3DTextLabel("DealerShip\nType /buycar to buy a car or /v -> sell car for sell a car!", -1, 2131.86, -1150.61, 24.4856, 10.0, 0); //DEALERSHIP
	CreatePickup(1277, 23, 2131.86, -1150.61, 24.4856); //DEALERSHIP

	CreateDynamic3DTextLabel("Faction room:\nLos Santos Police Department\nPress F/ENTER to enter!", -1, 242.4210, 66.3276, 1003.6406, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, 6, -1, 10.0); //LVPD
	CreateDynamicPickup(1581, 23, 242.4210, 66.3276, 1003.6406, -1, 6, -1, 20.0); //LVPD

	CreateDynamic3DTextLabel("Elevetator\nUse /goup to go on the roof.", -1, 1568.6034, -1689.9702, 6.2188, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 15.0);
	CreateDynamic3DTextLabel("Elevetator\nUse /godown to go on down.", -1, 1564.9984, -1667.0006, 28.3956, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 15.0);
	CreateDynamic3DTextLabel("Elevetator\nUse /goup to go on the roof.", -1, 611.0454, -583.4958, 18.2109, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 15.0);
	CreateDynamic3DTextLabel("Elevetator\nUse /godown to go on down.", -1, 619.1884, -566.7750, 26.1432, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 15.0);
	CreateDynamic3DTextLabel("Elevetator\nUse /goup to go on the roof.", -1, 2025.2511, -1401.6699, 17.2098, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 15.0);//paramedic
	CreateDynamic3DTextLabel("Elevetator\nUse /godown to go on down.", -1, 2049.8809, -1405.7015, 48.3359, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 15.0);//paramedic

	//elevator's
	CreateDynamicPickup(1239, 23, 1568.6034, -1689.9702, 6.2188, -1, -1, -1, 50.0);
	CreateDynamicPickup(1239, 23, 1564.9984, -1667.0006, 28.3956, -1, -1, -1, 50.0);
	CreateDynamicPickup(1239, 23, 611.0454, -583.4958, 18.2109, -1, -1, -1, 50.0);
	CreateDynamicPickup(1239, 23, 619.1884, -566.7750, 26.1432, -1, -1, -1, 50.0);
	CreateDynamicPickup(1239, 23, 2025.2511, -1401.6699, 17.2098, -1, -1, -1, 50.0);
	CreateDynamicPickup(1239, 23, 2049.8809, -1405.7015, 48.3359, -1, -1, -1, 50.0);
	CreateDynamic3DTextLabel("{ba2424}Valentine's Day\n{ffffff}Type {ba2424}/startquest{ffffff} to begin!", -1, 982.5784,-1623.0977,14.9604, 15.0, INVALID_PLAYER_ID);
	CreateDynamic3DTextLabel("Rent vehicle!\nPress {ff0000}H{ffffff} key to rent a vehicle.", -1, 1252.2181,-1426.6147,13.4948, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 15.0);
	CreateDynamicPickup(1098, 23, 1252.2181,-1426.6147,13.4948, -1, -1, -1, 50.0);

	CreateDynamic3DTextLabel("Licenses place!\nUse {ff0000}/buylicenses{ffffff} to buy a licence.", -1, 1529.5808,-1278.5466,15.5267, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 15.0);
	CreateDynamicPickup(1239, 23, 1529.5808,-1278.5466,15.5267, -1, -1, -1, 50.0);

	CreateDynamic3DTextLabel("Parachute\nUse /buyparachute to buy a parachute.", -1, -2233.8220, -1742.5088, 480.8490, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 15.0);
	CreateDynamic3DTextLabel("Fightstyle's\nUse /fightstyle to buy a new fight style.", -1, 765.3915, -77.0649, 1000.6563, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1, -1, 15.0);
	CreatePickup(1239, 23, -2233.8220, -1742.5088, 480.8490); //PARACHUTE
	CreatePickup(1239, 23, 765.3915, -77.0649, 1000.6563); //FIGHTSTYLE

	loadDatabaseTables();
	_DEAMX();

	return true;
}
public OnVehicleStreamIn(vehicleid, forplayerid) {
	Iter_Add(vehicleStreamed[forplayerid], vehicleid);
	return true;
}

public OnVehicleStreamOut(vehicleid, forplayerid) {
	Iter_Remove(vehicleStreamed[forplayerid], vehicleid);
	return true;
}
public OnPlayerSelectObject( playerid, type, objectid, modelid, Float:fX, Float:fY, Float:fZ )
{
	return true;
}
public OnGameModeExit() {

	mysql_close();

	for(new i = 0; i < MAX_TIMERS; i ++) KillTimer(serverTimer[i]);

	return true;
}
public OnPlayerConnect(playerid) {

	new 
		playerip[16];
	PlayRadio[playerid] = 0;
	GetPlayerIp(playerid, playerip, sizeof playerip);
	BanCheck(playerid);

	if(NumIp(playerip, playerid) > 2) return SendClientMessage(playerid, COLOR_RED, "There are already 2 players connected with that IP Address."), KickEx(playerid);
	if(MadeAdds(getNameEx(playerid))) return SendClientMessage(playerid, COLOR_RED, "You got kicked because you are makeing ads for another server!"), KickEx(playerid);
	inClanHQ[playerid] = -1;
	
	b_ShowPin[playerid] = false;
	
	static const emptyPlayer[P_ENUMS];
	playerVariables[playerid] = emptyPlayer;
	targetFind[playerid] = inviteOffer[playerid] = ticketOffer[playerid] = transferOffer[playerid] = INVALID_PLAYER_ID;
	lastSMS[playerid] = freeOffer[playerid] = In_Taxi[playerid] = Player_HIT[playerid] = INVALID_PLAYER_ID;
	Used_Contract[playerid] = HaveNewbie[playerid] = Spectate[playerid] = thingOffer[playerid] = INVALID_PLAYER_ID;
	playerTarget[playerid] = -1;
	for(new i = 0; i < 13; i++) WeaponData[playerid][i] = false;
	for(new x = 0; x < 47; x ++) WeaponAmmo[playerid][x] = 0;
	Streamer_ToggleIdleUpdate(playerid,1);
	resetVariables(playerid);
	SetPlayerColor(playerid, COLOR_GREY);
	load_login(playerid);
	// loadPhonePlayerTD(playerid);
	loadHorse(playerid);
	ptopw(playerid);
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "SELECT * FROM `players` WHERE `Name`='%e' LIMIT 1;", getNameEx(playerid));
	mysql_tquery(SQL, gQuery, "checkPlayerAccount", "i", playerid);

	return true;
}
public OnPlayerClickTextDraw(playerid, Text:clickedid) {

	if(clickedid == Text:INVALID_TEXT_DRAW)
	{
		if(Iter_Contains(playersInConnect, playerid) && gettime() > GetPVarInt(playerid, "showedRegion")) return kickPlayer(playerid, "You canceled your account register! You got kicked.");
	}
    for(new i = 1, j = 11; i < j; i++)
    {
        if(clickedid == gPinTD[i])
        {
            new szPin[10], szNewPin[10];
            GetPVarString(playerid, "pin_text", szPin, sizeof szPin);

            if(strlen(szPin) == 4) return PlayerPlaySound(playerid, 1085, 0.0, 0.0, 10.0);
            if(i == 10) format(szNewPin, 5, "%s0", szPin), SetPVarString(playerid,"pin_text", szNewPin);
            else format(szNewPin, 5, "%s%d", szPin, i), SetPVarString(playerid, "pin_text", szNewPin);
            PlayerPlaySound(playerid, 1083, 0.0, 0.0, 10.0);
            pPin_Update(playerid);
        }
    }

    if(clickedid == INVALID_TEXT_DRAW)
    {
        if(b_ShowPin[playerid] == true) pPin_Status(playerid, false);
    }

    if(clickedid == gPinTD[13])
    {
        new
            szPin[15],
            e_type = GetPVarInt(playerid, "pin_case");

        GetPVarString(playerid, "pin_text", szPin, sizeof szPin);

        if(strlen(szPin) < 4) return 1;
        switch(e_type)
        {
            case 1:
            {
                playerVariables[playerid][pPin] = strval(szPin);
                updateINT(playerid, "Pin", playerVariables[playerid][pPin]);

                SendClientMessage(playerid, COLOR_GREY, "PIN >> {ffffff}Account security code has been set.");
                pPin_Status(playerid, false);
                pPinLogged[playerid] = true;
                DeletePVar(playerid, "pin_case");
            }
            case 2:
            {
				if(playerVariables[playerid][pPin] == strval(szPin))
                {
					pPinLogged[playerid] = true;
					DeletePVar(playerid, "pin_case");
                    pPin_Status(playerid, false);
					SendClientMessage(playerid, COLOR_GREY, "PIN >> {ffffff} Account successfully validated.");
                    return true;
				}
				else
                {
					SendClientMessage(playerid, COLOR_GREY, "PIN >> {ffffff} Invalid security code!");
                    SetPVarString(playerid, "pin_text", "");
					pPin_Update(playerid);
					PlayerPlaySound(playerid, 1085, 0.0, 0.0, 10.0);
					return true;
				}
			}
            case 3:
            {
                if(playerVariables[playerid][pPin] == strval(szPin))
                {
					SendClientMessage(playerid, COLOR_GREY, "PIN >> {FFFFFF}The code you entered is correct. The second step is to put your new pin.");
                    SetPVarString(playerid, "pin_text", "");
                    pPin_Update(playerid);
					SetPVarInt(playerid, "pin_case", 4);
					PlayerTextDrawSetString(playerid, pPinTD[0], "SET PIN");
					return true;
				}
				else
                {
					SendClientMessage(playerid, COLOR_GREY, "PIN >> {ffffff}Invalid PIN code!");
					SetPVarString(playerid, "pin_text", "");
                    pPin_Update(playerid);
					PlayerPlaySound(playerid, 1085, 0.0, 0.0, 10.0);
					return true;
				}
            }
            case 4:
            {
                playerVariables[playerid][pPin] = strval(szPin);
                updateINT(playerid, "Pin", playerVariables[playerid][pPin]);
                SendClientMessage(playerid, COLOR_GREY, "PIN >> {ffffff}You have reset your account security code.");
                pPin_Status(playerid, false);
                pPinLogged[playerid] = true;
                DeletePVar(playerid, "pin_case");
            }
        }
        return true;
    }

	if(clickedid == gPinTD[14])
    {
        new szPin[10];
        GetPVarString(playerid, "pin_text", szPin, sizeof szPin);

		if(strval(szPin) < 4) PlayerPlaySound(playerid, 1083, 0.0, 0.0, 10.0);
		else PlayerPlaySound(playerid, 1085, 0.0, 0.0, 10.0);
        SetPVarString(playerid, "pin_text", "");
		pPin_Update(playerid);
        return true;
	}

	return true;
}

public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid) {

    if(playertextid == ptd_login[4]) {
		SendClientMessage(playerid, COLOR_SERVER, "Server: {ffffff}This name is already registred. Enter your password below to login!");
		Dialog_Show(playerid, DIALOG_LOGIN, DIALOG_STYLE_PASSWORD, "Server: Login", "This account is already registred!\nEnter your password below.", "Login", "Close");
    }

	return true;
}
#include <system/boosted>
public OnPlayerDisconnect(playerid, reason) {

	if(Iter_Contains(playersInConnect, playerid)) {

		stop loginTimer[playerid];
		loginAttemps[playerid] = 0;
		Iter_Remove(playersInConnect, playerid);

	}

	#if defined SHAMPANGE 
	DeletePVar(playerid, "option");
	DeletePVar(playerid, "in_shampange");
	#endif
	if( GetPVarInt( playerid, "player_w") != 0 )
	        SetPVarInt( playerid, "player_w", 0 );

	if(GetPVarInt(playerid, "in_heist") != 0) {
	   	DeletePVar(playerid, "in_heist_bank");
		DeletePVar(playerid, "in_heist");
	}
	if(boostActive == true) {
		if(playerVariables[playerid][pBoosted] > 0) {
			va_SendClientMessageToAll(COLOR_SERVER, "Boost Event >> {FFFFFF}%s s-a deconectat, event-ul a luat sfarsit!", getName(playerid));
			boostActive = false;
			playerVariables[playerid][pBoosted] = -1;
			moneyBoosted = ppBoosted = -1;
		}
	}

	mysql_tquery( SQL, gQuery, "", "");
	
	DeletePVar(playerid, "helmet_on");
	new logs[256];
	format(logs, sizeof(logs), "%s has disconnected [cash: $%s] [bank: $%s] [PP: %d] [Level: %d] [hours: %.2f]')", getNameEx(playerid), FormatNumber(playerVariables[playerid][pCash]), FormatNumber(playerVariables[playerid][pBank]), playerVariables[playerid][pPremiumPoints], playerVariables[playerid][pLevel], playerVariables[playerid][pHours]);
	insertDisconnectLog(playerid, logs);
	if(isPlayerLogged[playerid])
	{
		if(GetPVarInt(playerid, "inExam")) stopExamen(playerid, 2);
		if(rentVehicle[playerid] != 0) UnRent_Vehicle(playerid);

		if(GetPVarInt(playerid, "Have_AD"))
		{
			Total_Ads --;
			stop Ad_Timer[playerid];
		}
	   

		new 
			year, month, day,
			hour, minute, second,
			Query[140],
			disconnectReasons[14],
			member = playerVariables[playerid][pMember];
		gettime(hour, minute, second);
		getdate(year, month, day);

		gQuery[0] = EOS;
		mysql_format(SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `LastOnline`='%02d-%02d-%02d %02d:%02d:%02d', `LastOnDays`=%d, `Status`=0, `Seconds`=%d WHERE `ID`=%d;", 
			year, month, day, hour, minute, second, gettime(), playerVariables[playerid][pSeconds], getDatabaseID(playerid));
		mysql_tquery(SQL, gQuery, "", "");
		gQuery[ 0 ] = EOS;
		mysql_format( SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `StatusPlayer` = 'logOFF' WHERE `ID` = '%d'", getDatabaseID( playerid ) );

		// bars
		DestroyPlayerProgressBar(playerid, goalBar);
		DestroyPlayerProgressBar(playerid, dailyBar);
		// DestroyPlayerProgressBar(playerid, jobBar);
		if(Iter_Contains(server_phones, playerid)) Iter_Remove(server_phones, playerid);
		if(Iter_Contains(Leaders, playerid)) Iter_Remove(Leaders, playerid);
		if(Iter_Contains(Event, playerid)) Iter_Remove(Event, playerid);
		if(Iter_Contains(inStaff, playerid))
		{
			if(Iter_Contains(Admins, playerid)) Iter_Remove(Admins, playerid);
			if(Iter_Contains(Helpers, playerid)) Iter_Remove(Helpers, playerid);
			Iter_Remove(inStaff, playerid);
		}
		updateINT(playerid, "ActivityTime", playerVariables[playerid][pActivityTime]);
		updateINT(playerid, "JailTime", playerVariables[playerid][pJailTime]);
		showedDMG[playerid] = 0;
		if(Iter_Contains(isPremium, playerid)) Iter_Remove(isPremium, playerid);
		if(Iter_Contains(isVIP, playerid)) Iter_Remove(isVIP, playerid);

		if(Iter_Contains(Reports, playerid))
		{
			if(GetPVarInt(playerid, "reportReason") == 2 || GetPVarInt(playerid, "reportReason") == 4)
			{
				foreach(new i : Player) if(IsPlayerConnected(i) && Reported[i] == playerid) Reported[i] = INVALID_PLAYER_ID;
			}
			Iter_Remove(Reports, playerid);
		}
		if(playerVariables[playerid][pCall] == 1) {
			new caller = playerVariables[playerid][pPhoneCaller], called = playerVariables[playerid][pPhoneCalled];

			playerVariables[caller][pCall] = playerVariables[called][pCall] = 0;
			playerVariables[caller][pPhoneCalled] = playerVariables[caller][pPhoneCaller] = INVALID_PLAYER_ID;
			playerVariables[called][pPhoneCalled] = playerVariables[called][pPhoneCaller] = INVALID_PLAYER_ID;
		}
		resetVariables(playerid);
		foreach(new i : Player)
		{
			

			if(targetFind[i] == playerid)
			{
				DisablePlayerCheckpointEx(i);
				GameTextForPlayer(i, "~r~your target left the game", 5000, 1);
				targetFind[i] = INVALID_PLAYER_ID;
				DeletePVar(i, "lastSkinFind");
				PlayerTextDrawHide(i, findTD[i][0]), PlayerTextDrawHide(i, findTD[i][1]);
			}

			if(Spectate[i] == playerid) toggleSpectate(i);
		}
		foreach(new x : serverContracts) {
			if(contractVariables[x][tID] == playerid) Iter_Remove(serverContracts, x);
		}
		

		if(GetPVarInt(playerid, "Taxi_Fare") > 0 && playerVariables[playerid][pMember] == 7) {
			DeletePVar(playerid, "Taxi_Fare"), DeletePVar(playerid, "Taxi_Earns");
			PlayerTextDrawHide(playerid, Taxi_PTD[playerid]);
			foreach(new x : Player) {
				if(GetPlayerState(x) == PLAYER_STATE_PASSENGER) {
					if(IsPlayerInVehicle(x, GetPlayerVehicleID(playerid))) {
						RemovePlayerFromVehicle(x);
						SendClientMessage(x, COLOR_GREY, "Your uber driver left the game!");
						PlayerTextDrawHide(x, Taxi_PTD[x]);
					}
				}
			}
		}

		gettime(hour, minute, second);
		getdate(year, month, day);
		SetPlayerName(playerid, playerVariables[playerid][pUserName]);

		switch(reason) {
			case 0: disconnectReasons = "crash";
			case 1: disconnectReasons = "disconnected";
			case 2: disconnectReasons = "kicked/banned";
		}

		updateINT(playerid, "ActivityTime", playerVariables[playerid][pActivityTime]);
		va_SendCloseMessage(playerid, COLOR_CLIENT, "%s has disconnected from server (%s).", getName(playerid), disconnectReasons);
		
		if(member > 0)
		{
			new 
				String[100];

			format(String, sizeof String, "%s from your group has disconnected (%s).", getName(playerid), disconnectReasons);
			SendFamilyMessage(member, COLOR_CLIENT, String);
		}

		ADeathMessage(playerid, INVALID_PLAYER_ID, 201);
	}

	

	return true;
}
public OnPlayerSpawn(playerid) {

	if(!isPlayerLogged[playerid] && !Iter_Contains(playersInConnect, playerid)) SendClientMessage(playerid, -1, "Invalid spawn request."), KickEx(playerid);
	else
	{
		//serverTeleported(playerid);

		if(playerVariables[playerid][pRegistred] == 2)
		{
			TogglePlayerControllableEx(playerid, false), SetPlayerVirtualWorld(playerid, playerid + 1);
			SetPlayerPosEx(playerid, 1433.6111, -1228.3667, 152.3983), SetPlayerFacingAngle(playerid, 27.7050);
			SetPlayerCameraPos(playerid, 1432.4786, -1226.9811, 153.3983), SetPlayerCameraLookAt(playerid, 1434.3622, -1228.5782, 152.4143);
			SetPlayerInterior(playerid, 1);
			return true;
		}

		StopAudioStreamForPlayer(playerid);
		SetPlayerHealthEx(playerid, 100.0);
		SetPlayerArmourEx(playerid, 0.0);
		setTeamColor(playerid);
		SetCameraBehindPlayer(playerid);
		SetPlayerSkin(playerid, playerVariables[playerid][pSkin]);
		setPlayerSpawn(playerid);

		//isPlayerDeath[playerid] = false;

		AC_WEAP[playerid] = -1;
		if(GetPVarInt(playerid, "takeingDrugs"))
		{
			stop useDrugs[playerid];
			DeletePVar(playerid, "takeingDrugs");
		}

	}

	return true;
}
normalSpawn(playerid) {
	SetPlayerVirtualWorld(playerid, 0);

	SetPlayerInterior(playerid, 0);
	SetPlayerPosEx(playerid, 1219.7958,-1427.9757,13.3656);
	SetPlayerFacingAngle(playerid, 1.1750);
	return true;
}
stock setPlayerSpawn(playerid)
{
	if(playerVariables[playerid][pDuty]) setPlayerDuty(playerid);
	if(GetPVarInt(playerid, "inDealership")) return exitDealership(playerid);
	if(GetPVarInt(playerid, "enteredTurf")) DeletePVar(playerid, "enteredTurf");

	if(GetPVarInt(playerid, "Paint_Type") != 0) return SetPaintSpawn(playerid, GetPVarInt(playerid, "Paint_Type"));

	if(BeforeSpectate[playerid][pSpectating]) {
		if(BeforeSpectate[playerid][pState] == PLAYER_STATE_DRIVER) PutPlayerInVehicleEx(playerid, BeforeSpectate[playerid][pInVehicle], 0);
		else if(BeforeSpectate[playerid][pState] == PLAYER_STATE_PASSENGER)  PutPlayerInVehicleEx(playerid, BeforeSpectate[playerid][pInVehicle], random(3) + 1);
		else SetPlayerPosEx(playerid, BeforeSpectate[playerid][pOldPos][0], BeforeSpectate[playerid][pOldPos][1], BeforeSpectate[playerid][pOldPos][2]);

		BeforeSpectate[playerid][pSpectating] = false;
		SetPlayerInterior(playerid, BeforeSpectate[playerid][pInt]);
		SetPlayerVirtualWorld(playerid, BeforeSpectate[playerid][pWorld]);
		return true;
	}
	if(playerVariables[playerid][pJailTime] > 0)
	{
		spawnInJail(playerid);
		PlayerTextDrawShow(playerid, wantedTD[playerid]);

		return true;
	}
	switch(playerVariables[playerid][pSpawn]) {
		case 0: {
			normalSpawn(playerid);	
		}
		case 1: {
			enterFaction(playerid, playerVariables[playerid][pMember]);

		}
		case 2: {
			spawnInHouse(playerid, playerVariables[playerid][pRent]);
		
		}
		case 3: {
			spawnInHq(playerid);

			
		}
	}
	return true;
}
function BanCheck(playerid)
{
	inline onCheckDone()
	{
		new
			count;

		if(!cache_get_row_count(count) || count != 1) 
			return IPBanCheck(playerid);

		new 
			id,
			type,
			by[MAX_PLAYER_NAME],
			reason[50],
			time;

		cache_get_value_name(0, "Admin", by);
		cache_get_value_name(0, "Reason", reason);
		cache_get_value_name_int(0, "Time", time);
		cache_get_value_name_int(0, "Permanent", type);
		cache_get_value_name_int(0, "ID", id);

		if(gettime() < time || type > 0)
		{
			va_SendClientMessage(playerid, COLOR_LIGHTRED, "This account is banned by %s, reason: %s", by, reason);

			if(type) SendClientMessage(playerid, COLOR_LIGHTRED, "The account is banned permanently!");
			else
			{
				new 
					date[6];

				TimestampToDate(time, date[0], date[1], date[2], date[3], date[4], date[5], 2);
				va_SendClientMessage(playerid, COLOR_LIGHTRED, "Ban will expire on %02d.%02d.%02d - %02d:%02d:%02d", date[2], date[1], date[0], date[3], date[4], date[5]);
			}

			SendClientMessage(playerid, COLOR_LIGHTRED, "You can post a unban request on panel."WEB_URL"/unban if you think you took the ban for nothing.");
			GameTextForPlayer(playerid, "Banned", 5000, 2);
			KickEx(playerid);
		}
		else
		{
			new 
				Query[55];

			mysql_format(SQL, Query, sizeof Query, "DELETE FROM `bans` WHERE `ID`=%d;", id);
			mysql_tquery(SQL, Query, "", "");
		}
	}

	MySQL_TQueryInline(SQL, using inline onCheckDone, "SELECT * FROM `bans` WHERE `Player`='%e' AND `IPBan` = 0;", getNameEx(playerid));

	return true;
}

function IPBanCheck(playerid)
{
	inline onCheckDone()
	{
		new
			count;

		if(!cache_get_row_count(count) || count != 1) 
			return true;

		new 
			id,
			type,
			by[MAX_PLAYER_NAME],
			reason[50],
			time;

		cache_get_value_name(0, "Admin", by);
		cache_get_value_name(0, "Reason", reason);
		cache_get_value_name_int(0, "Time", time);
		cache_get_value_name_int(0, "Permanent", type);
		cache_get_value_name_int(0, "ID", id);

		if(gettime() < time || type > 0)
		{
			va_SendClientMessage(playerid, COLOR_LIGHTRED, "This IP address is banned by %s, reason: %s", by, reason);

			if(type) SendClientMessage(playerid, COLOR_LIGHTRED, "The IP address is banned permanently!");
			else
			{
				new 
					date[6];

				TimestampToDate(time, date[0], date[1], date[2], date[3], date[4], date[5], 2);
				va_SendClientMessage(playerid, COLOR_LIGHTRED, "Ban will expire on %02d.%02d.%02d - %02d:%02d:%02d", date[2], date[1], date[0], date[3], date[4], date[5]);
			}

			SendClientMessage(playerid, COLOR_LIGHTRED, "You can post a unban request on panel."WEB_URL"/unban if you think you took the ban for nothing.");
			GameTextForPlayer(playerid, "Banned", 5000, 2);
			KickEx(playerid);
		}
		else
		{
			new 
				Query[55];

			mysql_format(SQL, Query, sizeof Query, "DELETE FROM `bans` WHERE `ID`=%d;", id);
			mysql_tquery(SQL, Query, "", "");

			IPBanCheck(playerid);
		}
	}

	MySQL_TQueryInline(SQL, using inline onCheckDone, "SELECT * FROM `bans` WHERE `IP`='%s' AND `IPBan` > 0;", getPlayerIp(playerid));

	return true;
}
public OnPlayerRequestClass(playerid, classid)
{
	if(playerOnline(playerid)) SpawnPlayer(playerid);
	if(MadeAdds(getNameEx(playerid))) return SendClientMessage(playerid, COLOR_RED, "You got kicked because you are makeing ads for another server!"), KickEx(playerid);

	return true;
}
public OnPlayerCommandPerformed(playerid, cmd[], params[], result, flags)
{
	if(result == -1)
	{
		SendClientMessage(playerid, -1, "SERVER: Unknown Command.");
		return false;
	}


	return true;
}
public OnPlayerEnterCheckpoint(playerid)
{
	switch(playerCheckpoint[playerid])
	{
		case CHECKPOINT_DEFAULT:
		{
			DisablePlayerCheckpointEx(playerid);
			if(targetFind[playerid] != INVALID_PLAYER_ID)
			{
				targetFind[playerid] = INVALID_PLAYER_ID;
				DeletePVar(playerid, "lastSkinFind");
				PlayerTextDrawHide(playerid, findTD[playerid][0]), PlayerTextDrawHide(playerid, findTD[playerid][1]);
			}
		}
		case CHECKPOINT_TTC:
		{
			if(!IsPlayerInAnyVehicle(playerid)) 
				return SendClientMessage(playerid, COLOR_GREY, "You are not in your faction vehicle.");

			new 
				vehicleid = GetPlayerVehicleID(playerid);

			if(!IsTrailerAttachedToVehicle(vehicleid)) 
				return SendClientMessage(playerid, COLOR_GREY, "You don't have the vehicle attached to your truck.");

			new 
				trailerid = GetVehicleTrailer(vehicleid),
				ownid = getPlayerVehicle(trailerid);

			if(!ownid) 
				return SendClientMessage(playerid, COLOR_GREY, "This is not a personal vehicle.");

			new 
				randMoney = randomEx(10000, 15000);

			GivePlayerCash(playerid, randMoney);
			SendFormatMessage(playerid, COLOR_GREEN, "You towed a vehicle and got $%s and 1 raport point!", FormatNumber(randMoney));
			DisablePlayerCheckpointEx(playerid);
			giveRaportPoint(playerid, 0);

			format(sString, sizeof sString, "[TOW] %s towed a vehicle (ID: %d, Owner: %s).", getName(playerid), getVehicleSQL(ownid), getVehicleOwner(ownid));
			SendFamilyMessage(9, COLOR_FCT_ACTION, sString);
			insertFactionLog(9, sString, playerid);

			format(sString, sizeof sString, "%s towed your vehicle (Model: %s, Current fee: $%s).", getName(playerid), getModelName(GetVehicleModel(trailerid)), FormatNumber(getVehicleTax(ownid)));
			insertPlayerEmail(getVehicleOwner(ownid), sString);

			insertVehicleFine(getCarOwnerID(ownid), ownid);

			foreach(new i : Player) if(playerOnline(i) && i == getCarOwnerID(ownid)) SendClientMessage(i, COLOR_YELLOW, "(Tow Truck Company): {ffffff}Unul din vehiculele tale personale a fost tractat. Citeste ultimul email pentru detalii.");
		}
		case CHECKPOINT_ROB:
		{
			DisablePlayerCheckpointEx(playerid);

			new 
				money = randomEx(1000000, 1300000);

			GivePlayerCash(playerid, money);
			SendFormatMessage(playerid, COLOR_GREEN, "You got $%s from this rob!", FormatNumber(money));
			if(GetPVarInt(playerid, "ROB4")) {
				SendClientMessage(playerid, COLOR_SERVER, "Wembley(69): {ffffff}Heist successfully!");
				DeletePVar(playerid, "ROB4");
			}
		}
	}

	PlayerPlaySound(playerid, 1058, 0.0, 0.0, 0.0);

	return true;
}
public OnPlayerEnterRaceCheckpoint(playerid)
{
	DisablePlayerRaceCheckpoint(playerid);
	PlayerPlaySound(playerid, 1058, 0.0, 0.0, 0.0);

	if(GetPVarInt(playerid, "inExam"))
	{
		if(playerRaceCheckpoint[playerid] == 14)
		{
			DeletePVar(playerid, "inExam");
			playerVariables[playerid][pLicence][0] = 100, updateLicenses(playerid);
			stopExamen(playerid, 1);
			examVehicle[playerid] = INVALID_VEHICLE_ID;
			return true;
		}

		new 
			checkPoint = playerRaceCheckpoint[playerid], 
			nextPoint = checkPoint + 1;

		if(checkPoint == 14) SetPlayerRaceCheckpoint(playerid, 1, 
			dmvCheckpoints[checkPoint][0], dmvCheckpoints[checkPoint][1], dmvCheckpoints[checkPoint][2], 0.0, 0.0, 0.0, 7.0);
		else SetPlayerRaceCheckpoint(playerid, 0, 
			dmvCheckpoints[checkPoint][0], dmvCheckpoints[checkPoint][1], dmvCheckpoints[checkPoint][2], 
			dmvCheckpoints[nextPoint][0], dmvCheckpoints[nextPoint][1], dmvCheckpoints[nextPoint][2], 7.0);

		playerRaceCheckpoint[playerid] ++;
		updateDMVTextdraws(playerid);

	}

	return true;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	new 
		ownedCar = getPlayerVehicle(vehicleid);

	if(ownedCar > 0) updateVehicleMods(vehicleid, ownedCar);

	//serverTeleported(playerid);
	SetVehicleHealth(vehicleid, 999.0);

	return true;
}

public OnVehicleDamageStatusUpdate(vehicleid, playerid)
{
	if(vehicleid == examVehicle[playerid])
	{
		if(!GetPVarInt(playerid, "inExam")) return true;

		updateDMVTextdraws(playerid);
	}

	return true;
}

public OnVehicleSpawn(vehicleid)
{


	if(IsABike(vehicleid))
	{
		new 
			engine, lights, alarm, doors, bonnet, boot, objective;

		vehicleEngine[vehicleid] = 1, vehicleFuel[vehicleid] = 100;
		GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
		SetVehicleParamsEx(vehicleid, VEHICLE_PARAMS_ON, lights, alarm, doors, bonnet, boot, objective);
	}
	else vehicleEngine[vehicleid] = 0;

	foreach(new i : Player)
	{
		if(playerOnline(i))
		{
			if(vehicleid == examVehicle[i]) stopExamen(i, 0);
			if(isJobVehicle(i, vehicleid)) stopJobWorking(i);
			if(vehicleid == rentVehicle[i]) UnRent_Vehicle(i);
		}
	}

	return true;
}
hook OnPlayerExitVehicle(playerid, vehicleid)
{
	PlayRadio[playerid] = 0;
	StopAudioStreamForPlayer(playerid);

	return 1;
}
public OnVehicleDeath(vehicleid, killerid)
{
	
	VehicleGarage[vehicleid] = -1;
	StopAudioStreamForPlayersInCar(vehicleid);
	foreach(new i : Player)
	{
		if(playerOnline(i))
		{
			if(vehicleid == examVehicle[i]) stopExamen(i, 0);
			if(isJobVehicle(i, vehicleid)) stopJobWorking(i);
			if(vehicleid == rentVehicle[i]) UnRent_Vehicle(i);
		}
	}

	return true;
}
public OnPlayerStateChange(playerid, newstate, oldstate)
{
	new 
		newvehicle = GetPlayerVehicleID(playerid);

	switch(newstate)
	{
		case PLAYER_STATE_ONFOOT:
		{
			for( new x = 0; x < 13; x ++ ) TextDrawHideForPlayer( playerid, Speedometer_TD[ x ] );
			for( new x = 0; x < 15; x ++ ) PlayerTextDrawHide( playerid, Speedometer_PTD[ playerid ][ x ] );

			if(rentVehicle[playerid] != 0 && gLastCar[playerid] == rentVehicle[playerid]) Rent_Veh_Time[playerid] = gettime() + 180;

			if(GetPVarInt(playerid, "inExam")) return stopExamen(playerid);
			if(oldstate == PLAYER_STATE_DRIVER || oldstate == PLAYER_STATE_ONFOOT) gLastCar[playerid] = 0;
			

			if(GetPVarInt(playerid, "Taxi_Fare") > 0)
			{
				foreach(new i : Player)
				{
					if(In_Taxi[i] == playerid)
					{
						RemovePlayerFromVehicle(i);
						SendClientMessage(i, COLOR_GREY, "Your uber driver left the vehicle!");
						In_Taxi[i] = INVALID_PLAYER_ID;
						PlayerTextDrawHide(i, Taxi_PTD[i]);
						stop Taxi_Time[i];
					}
				}
				SetPVarInt(playerid, "Fare_Deelay", gettime() + 20);
				PlayerTextDrawHide(playerid, Taxi_PTD[playerid]);
				DeletePVar(playerid, "Taxi_Fare"), DeletePVar(playerid, "Taxi_Earns");
			}
			if(In_Taxi[playerid] != INVALID_PLAYER_ID)
			{
				giveTaskProgress(playerid, BP_QUEST_UBER, 1);
				giveTaskProgress(In_Taxi[playerid], BP_QUEST_UBER, 1);
				giveRaportPoint(In_Taxi[playerid], 0);

				PlayerTextDrawHide(playerid, Taxi_PTD[playerid]);
				PlayerTextDrawSetString(In_Taxi[playerid], Taxi_PTD[In_Taxi[playerid]], "~r~waiting_for~n~costumers..");
				format(sString, sizeof sString, "* %s gets off the cab and pays $%s to %s.", getName(playerid), FormatNumber(GetPVarInt(In_Taxi[playerid], "Taxi_Earns")), getName(In_Taxi[playerid]));
				SendCloseMessage(playerid, COLOR_PURPLE, sString, 10.0), DeletePVar(In_Taxi[playerid], "Taxi_Earns"), In_Taxi[playerid] = INVALID_PLAYER_ID;
				stop Taxi_Time[playerid];
			}
		}
		case PLAYER_STATE_DRIVER:
		{
			

			if(!playerVariables[playerid][pLicence][0])
			{
				if(examVehicle[playerid] == newvehicle && GetPVarInt(playerid, "inExam")) return true;
				if(IsABike(newvehicle) || IsAPlane(newvehicle) || IsABoat(newvehicle)) return true;

				RemovePlayerFromVehicle(playerid);
				SendClientMessage(playerid, COLOR_GREY, "You don't have driving licence.");

				return true;
			}

			if(isAServerVehicle(newvehicle))
			{
				new 
					vehicleid = getServerVehicle(playerid),
					factionid = getVehicleGroup(vehicleid),
					vehiclerank = getVehicleRank(vehicleid);

				if(factionid > 0 && playerVariables[playerid][pMember] != factionid)
				{
					// slapPlayer(playerid);
					SendFormatMessage(playerid, -1, "You are not a member of %s.", getFactionName(factionid));
					Slap(playerid);
					return true;
				}

				else if(factionid > 0 && playerVariables[playerid][pMember] == factionid && playerVariables[playerid][pRank] < vehiclerank)
				{
					// slapPlayer(playerid);
					SendFormatMessage(playerid, -1, "You need rank %d to drive this vehicle.", vehiclerank);
					Slap(playerid);
					return true;
				}

				else if(factionid > 0 && playerVariables[playerid][pMember] == factionid && !playerVariables[playerid][pDuty])
				{
					// slapPlayer(playerid);
					SendClientMessage(playerid, -1, "You are not on-duty to drive this vehicle.");
					Slap(playerid);
					return true;
				}
			}

			for( new x = 0; x < 13; x ++ ) TextDrawShowForPlayer( playerid, Speedometer_TD[ x ] );
			for( new x = 0; x < 15; x ++ ) PlayerTextDrawShow( playerid, Speedometer_PTD[ playerid ][ x ] );

			if(vehicleMarker[newvehicle])
			{
				new 
					engine, lights, alarm, doors, bonnet, boot, objective;

				GetVehicleParamsEx(newvehicle, engine, lights, alarm, doors, bonnet, boot, objective);
				SetVehicleParamsEx(newvehicle, engine, lights, alarm, doors, bonnet, boot, VEHICLE_PARAMS_OFF);
				vehicleMarker[newvehicle] = false;
			}


			if(rentVehicle[playerid] != 0 && newvehicle == rentVehicle[playerid]) Rent_Veh_Time[playerid] = -1;

			gLastCar[playerid] = newvehicle;
		}
		case PLAYER_STATE_PASSENGER:
		{
			gLastCar[playerid] = newvehicle;

			if(isUberCar(newvehicle))
			{
				foreach(new i : Player)
				{
					if(GetPlayerState(i) == PLAYER_STATE_DRIVER && GetPlayerVehicleID(i) == newvehicle)
					{
						if(GetPVarInt(i, "Taxi_Fare") > 0)
						{
							foreach(new x : Player) if(In_Taxi[x] == i) return true;

							if(GetPVarInt(playerid, "Called_Taxi")) DeletePVar(playerid, "Called_Taxi");

							new 
								String[60];

							format(String, sizeof String, "~y~ride_cost:_~w~$%s~n~~y~fare:_~w~$%d_/_20_seconds", FormatNumber(GetPVarInt(i, "Taxi_Earns")), GetPVarInt(i, "Taxi_Fare"));
							PlayerTextDrawSetString(playerid, Taxi_PTD[playerid], String), PlayerTextDrawSetString(i, Taxi_PTD[i], String);
							PlayerTextDrawShow(playerid, Taxi_PTD[playerid]);
							Taxi_Time[playerid] = repeat Ride_Cost(playerid, i);
							In_Taxi[playerid] = i;
						}
					}
				}
			}

			new 
				gun, tmp;

			GetPlayerWeaponData(playerid, 5, gun, tmp);
			#pragma unused tmp
			if(gun) SetPlayerArmedWeapon(playerid, gun);
			else SetPlayerArmedWeapon(playerid, 0);
		}

	}

	return true;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & KEY_CTRL_BACK)
	{

		if(IsPlayerInRangeOfPoint(playerid, 7.0, 1252.2181,-1426.6147,13.4948))
		{
			if(IsPlayerInAnyVehicle(playerid)) 
				return SendClientMessage(playerid, COLOR_GREY, "You can't acces this from a vehicle.");

			if(GetPlayerVirtualWorld(playerid) > 0) 
				return SendClientMessage(playerid, COLOR_GREY, "You need to be in virtual world normal to rent a vehicle.");

			if(rentVehicle[playerid] != 0) 
				return SendClientMessage(playerid, COLOR_GREY, "You already rented a vehicle! Use '/unrentveh' first.");

			new 
				stringTotal[115],
				String[25];

			for(new i = 0; i < MAX_RENT_MODELS; i++)
			{
				format(String, sizeof String, "%s\t%d available\n", getModelName(Rent_Model[i]), Rent_Available[i]);
				strcat(stringTotal, String);
			}
			Dialog_Show(playerid, DIALOG_RENT_VEHICLE, DIALOG_STYLE_TABLIST, "Rent Vehicle", stringTotal, "Choose", "Close");
		}
	}
	if(newkeys & KEY_FIRE && IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	{
		if(playerVariables[playerid][pAdmin] > 4 && GetPVarInt(playerid, "enableSpeed"))
		{
			new 
				Float: X,
				Float: Y,
				Float: Z,
				vehicleid = GetPlayerVehicleID(playerid);

			GetVehicleVelocity(vehicleid, X, Y, Z);
			SetVehicleVelocity(vehicleid, X * 3, Y * 3, Z * 3);
		}
	}
	if(newkeys & KEY_WALK) if(Spectate[playerid] != INVALID_PLAYER_ID) toggleSpectate(playerid);
	if(newkeys & KEY_SECONDARY_ATTACK)
	{
		if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
		{
			new 
				nearCar = GetClosestVehicle(playerid);

			if(nearCar != INVALID_VEHICLE_ID && IsPlayerNearVehicle(playerid, nearCar, 5))
			{
				if(isPlayerVehOwner(playerid, nearCar)) SetVehicleParamsForPlayer(nearCar, playerid, VEHICLE_PARAMS_OFF, VEHICLE_PARAMS_OFF);
				else if(isJobVehicle(playerid, nearCar)) SetVehicleParamsForPlayer(nearCar, playerid, VEHICLE_PARAMS_OFF, VEHICLE_PARAMS_OFF);
				else if(rentVehicle[playerid] == nearCar) SetVehicleParamsForPlayer(nearCar, playerid, VEHICLE_PARAMS_OFF, VEHICLE_PARAMS_OFF);
			}
		}

		if(GetPVarInt(playerid, "inFly")) stopFly(playerid);

		new pos = random(sizeof metalExits);
		if(IsPlayerInRangeOfPoint(playerid, 7.0, 1074.5195,-1204.1215,18.1142) && playerVariables[playerid][pJob] == 12 || IsPlayerInRangeOfPoint(playerid, 7.0, 1093.4844,-1233.5115,15.8203) && isCop(playerid)) {
			if(IsPlayerInAnyVehicle(playerid)) 
				return SendClientMessage(playerid, COLOR_GREY, "You can't acces this from a vehicle.");

			if(GetPlayerVirtualWorld(playerid) > 0) 
				return SendClientMessage(playerid, COLOR_GREY, "You need to be in virtual world normal.");	

			SetPlayerPosEx(playerid, metalExits[pos][0], metalExits[pos][1], metalExits[pos][2]);
		}
		if(IsPlayerInRangeOfPoint(playerid, 7.0, metalExits[pos][0], metalExits[pos][1], metalExits[pos][2])) {
			SetPlayerPosEx(playerid, 1074.5195,-1204.1215,18.1142);
			if(GetPVarInt(playerid, "metalFirst") == 3) {
				setPlayerCheckpointEx(playerid, -50.5072,-1138.8485,1.0781, 2.0, CHECKPOINT_JOB_GENERAL);
			}

		}

		//lvpd room
		if(IsPlayerInRangeOfPoint(playerid, 3.0, 242.4210, 66.3276, 1003.6406) && isCop(playerid))
		{
			SetPlayerPosEx(playerid, 288.7685,168.0713,1007.1719), SetPlayerFacingAngle(playerid, 0.1172);
			SetCameraBehindPlayer(playerid);
			SetPlayerInterior(playerid, 3);
			SetPlayerVirtualWorld(playerid, 1);
		}
		else if(IsPlayerInRangeOfPoint(playerid, 5.0, 288.7685,168.0713,1007.1719) && isCop(playerid) && GetPlayerVirtualWorld(playerid) == 1)
		{
			SetPlayerPosEx(playerid, 242.4210, 66.3276, 1003.6406);
			SetPlayerInterior(playerid, 6);
		}
		//

		//gym
		if(IsPlayerInRangeOfPoint(playerid, 3.0, 2229.9099, -1721.2657, 13.5614))
		{
			SendClientMessage(playerid, -1, "Welcome to GYM! Use /fightstyle to change your fight style.");
			SetPlayerPosEx(playerid, 773.579956,-77.096694,1000.655029);
			SetCameraBehindPlayer(playerid);
			SetPlayerInterior(playerid, 7);
		}
		else if(IsPlayerInRangeOfPoint(playerid, 5.0, 773.579956,-77.096694,1000.655029))
		{
			SetPlayerPosEx(playerid, 2229.9099, -1721.2657, 13.5614);
			SetPlayerInterior(playerid, 0);
		}
		//
	}

	if(newkeys & KEY_LOOK_BEHIND) {

		if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER) {

			if(!PRESSING(newkeys, KEY_SPRINT)) vehEngineStatus(playerid);

		}

	}

	if(newkeys & KEY_ACTION) {

		if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER && !IsABike(GetPlayerVehicleID(playerid))) {

			new 
				engine, lights, alarm, doors, bonnet, boot, objective,
				vehicleid = GetPlayerVehicleID(playerid);

			GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
			if(!lights) SetVehicleParamsEx(vehicleid, engine, VEHICLE_PARAMS_ON, alarm, doors, bonnet, boot, objective);
			else SetVehicleParamsEx(vehicleid, engine, VEHICLE_PARAMS_OFF, alarm, doors, bonnet, boot, objective);

		}

	}

	if(newkeys & KEY_ANALOG_DOWN) {

		if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER && !IsABike(GetPlayerVehicleID(playerid))) {

			new 
				engine, lights, alarm, doors, bonnet, boot, objective,
				vehicleid = GetPlayerVehicleID(playerid);

			GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
			if(!boot) SetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, VEHICLE_PARAMS_ON, objective);
			else SetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, VEHICLE_PARAMS_OFF, objective);

		}

	}

	if(newkeys & KEY_ANALOG_UP) {

		if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER && !IsABike(GetPlayerVehicleID(playerid))) {

			new 
				engine, lights, alarm, doors, bonnet, boot, objective,
				vehicleid = GetPlayerVehicleID(playerid);

			GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
			if(!bonnet) SetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, VEHICLE_PARAMS_ON, boot, objective);
			else SetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, VEHICLE_PARAMS_OFF, boot, objective);

		}

	}

	if(newkeys & KEY_NO) lockVehicle(playerid);

	if((IsACBUGWeapon(playerid) && RELEASED(KEY_FIRE)) && newkeys != KEY_FIRE && newkeys & KEY_CROUCH)
	{
		ApplyAnimation(playerid , "PED" , "getup" , 4.1 , 0 , 0 , 0 , 0 , 0);
		SetPVarInt(playerid, "cbug_times", GetPVarInt(playerid, "cbug_times") + 1);
		SendClientMessage(playerid, 0xDBA458FF, "Pe serverul nostru este interzis c-bug, risti ban 3 zile.");
		if(GetPVarInt(playerid, "cbug_times") == 3) va_SendAdminsMessage(1, COLOR_RED, "Warning: %s did c-bug / c-shot 3 times, watch him (/spec %d).", getName(playerid), playerid);
		else if(GetPVarInt(playerid, "cbug_times") == 8) va_SendAdminsMessage(1, COLOR_RED, "Warning: %s did c-bug / c-shot 8 times, watch him (/spec %d).", getName(playerid), playerid);
		else if(GetPVarInt(playerid, "cbug_times") == 20) DeletePVar(playerid, "cbug_times");
	}

	return true;
}

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
	if(GetPVarInt(playerid, "jobWorking") > 0 && playerVariables[playerid][pAdmin] < 6) return true;

	if(In_Taxi[playerid] != INVALID_PLAYER_ID)
	{
		new taxi_driver = In_Taxi[playerid];
		Set_CP[taxi_driver][0] = fX, Set_CP[taxi_driver][1] = fY, Set_CP[taxi_driver][2] = fZ;
		SendClientMessage(playerid, -1, "Location request sended to taxi driver.. Please wait!");
		Dialog_Show(taxi_driver, DIALOG_TAXI_CP, DIALOG_STYLE_MSGBOX, "Location", "Your passenger asked you to take him to the checkpoint on the map!", "Accept", "Close");
		SetPVarInt(taxi_driver, "from_ID", playerid);
		return true;
	}

	if(playerVariables[playerid][pPremium] && In_Taxi[playerid] == INVALID_PLAYER_ID)
	{
		if(IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid) == PLAYER_STATE_PASSENGER)
		{
			new Driver_ID = INVALID_PLAYER_ID;
			foreach(new x : Player)
			{
				if(isPlayerLogged[x] && GetPlayerState(x) == PLAYER_STATE_DRIVER)
				{
					if(GetPlayerVehicleID(x) == GetPlayerVehicleID(playerid))
					{
						Driver_ID = x;
						break;
					}
				}
			}
			if(Driver_ID == INVALID_PLAYER_ID) return true;

			Set_CP[Driver_ID][0] = fX, Set_CP[Driver_ID][1] = fY, Set_CP[Driver_ID][2] = fZ;
			SendClientMessage(playerid, -1, "Location request sended to driver.. Please wait!");
			Dialog_Show(Driver_ID, DIALOG_PREMIUM_CP, DIALOG_STYLE_MSGBOX, "Location", "Your passenger asked you to take him to the checkpoint on the map!", "Accept", "Close");
			SetPVarInt(Driver_ID, "from_ID", playerid);
			return true;
		}
	}

	if(playerVariables[playerid][pAdmin] > 0 && In_Taxi[playerid] == INVALID_PLAYER_ID)
	{
		if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER) SetVehiclePosEx(playerid, GetPlayerVehicleID(playerid), fX, fY, fZ + 5);
		else SetPlayerPosFindZ(playerid, fX, fY, fZ + 5);
	}

	return true;
}

public OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ)
{
	if(hittype == BULLET_HIT_TYPE_VEHICLE) {
		foreach(new x : Player) {
			if(Spectate[x] == playerid && playerVariables[x][pAdmin] > 0) SendFormatMessage(x, COLOR_DARKPINK, "DMG: %s did damage to vehicle %d using a %s.", getName(playerid), hitid, weapName(weaponid));
		}
	}
	#if defined ROB_SPECIAL 
	switch( hittype )
	{
		case BULLET_HIT_TYPE_OBJECT:
		{
			if( hitid == ROB_SAFE) {
				if( ROB_SAFE_HEALTH > 0 ) {
					if( GetPlayerWeapon( playerid ) != 24 )
						return SendClientMessage( playerid, COLOR_GREY, "Trebuie sa folosesti un Desert Eagle!" );

					ROB_SAFE_HEALTH -= 5;
					//( playerid, 6401, 0.0, 0.0, 0.0 );
					gString[ 0 ] = EOS;
					format( gString, sizeof gString, "Safe Health: %d%%", ROB_SAFE_HEALTH );
					Update3DTextLabelText( ROB_SAFE_3D, 0xFFFF66FF, gString );

					if( ROB_SAFE_HEALTH <= 0 ) {
						MoveObject( ROB_SAFE, 2145.42749, 1627.03186, 994.25061, 1.0 );
						SendClientMessage(playerid, COLOR_SERVER, "Wembley(69):{ffffff} Steal money using command [/steal]");
					}
				}
			}
			
		}
	}
	#endif
	return true;
}

public OnPlayerText(playerid, text[])
{
	if(!isPlayerLogged[playerid]) return false;

	if(playerVariables[playerid][pMute] > 0) return SendFormatMessage(playerid, COLOR_GREY, "You can't talk. You are muted for %d more seconds..", timeLeft(playerVariables[playerid][pMute])), false;

	// anti-spam
	if(!strcmp(text, lastText[playerid]) && strlen(lastText[playerid]) > 0) return false;
	strcpy(lastText[playerid], text, 128);

	insertChatLog(playerid, text);

	new 
		String[256];

	if(GetPVarInt(playerid, "Paint_Type") != 0)
	{
		format(String, sizeof String, "[%s] %s [%d score]: {ffffff}%s", get_paint_rank(playerid), getName(playerid), getPaintKills(playerid)-getPaintDeaths(playerid), text);
		SendPaintMessage(GetPVarInt(playerid, "Paint_Type"), 0x5087adff, String);
		return false;
	}

	switch(playerVariables[playerid][pColor])
	{
		case 1: format(String, sizeof String, "{0087FE}%s:{FFFFFF} %s", getName(playerid), text);
		case 2: format(String, sizeof String, "{4700C2}%s:{FFFFFF} %s", getName(playerid), text);
		case 3: format(String, sizeof String, "{EBFF00}%s:{FFFFFF} %s", getName(playerid), text);
		case 4: format(String, sizeof String, "{EF00FF}%s:{FFFFFF} %s", getName(playerid), text);
		case 5: format(String, sizeof String, "{40FF00}%s:{FFFFFF} %s", getName(playerid), text);
		case 6: format(String, sizeof String, "{9CFF29}%s:{FFFFFF} %s", getName(playerid), text);
		case 7: format(String, sizeof String, "{0E7F03}%s:{FFFFFF} %s", getName(playerid), text);
		case 8: format(String, sizeof String, "{FF9A00}%s:{FFFFFF} %s", getName(playerid), text);
		case 9: format(String, sizeof String, "{6E6E6E}%s:{FFFFFF} %s", getName(playerid), text);
		case 10: format(String, sizeof String, "{FF4C9D}%s:{FFFFFF} %s", getName(playerid), text);
		case 11: format(String, sizeof String, "{F4FA58}%s:{FFFFFF} %s", getName(playerid), text);
		case 12: format(String, sizeof String, "{00BFFF}%s:{FFFFFF} %s", getName(playerid), text);
		case 13: format(String, sizeof String, "{819FF7}%s:{FFFFFF} %s", getName(playerid), text);
		case 14: format(String, sizeof String, "{FE9A2E}%s:{FFFFFF} %s", getName(playerid), text);
		case 15: format(String, sizeof String, "{FA8258}%s:{FFFFFF} %s", getName(playerid), text);
		case 16: format(String, sizeof String, "{00FF40}%s:{FFFFFF} %s", getName(playerid), text);
		case 17: format(String, sizeof String, "{D358F7}%s:{FFFFFF} %s", getName(playerid), text);
		case 18: format(String, sizeof String, "{4f169E1}%s:{FFFFFF} %s", getName(playerid), text);
		case 19: format(String, sizeof String, "{9ACD32}%s:{FFFFFF} %s", getName(playerid), text);
		case 20: format(String, sizeof String, "{F0E68C}%s:{FFFFFF} %s", getName(playerid), text);
		case 21: format(String, sizeof String, "{BDB76B}%s:{FFFFFF} %s", getName(playerid), text);
		case 22: format(String, sizeof String, "{FF1493}%s:{FFFFFF} %s", getName(playerid), text);
		case 23: format(String, sizeof String, "{9966CC}%s:{FFFFFF} %s", getName(playerid), text);
		case 24: format(String, sizeof String, "{F0B2B2}%s:{FFFFFF} %s", getName(playerid), text);
		case 25: format(String, sizeof String, "{DB7093}%s:{FFFFFF} %s", getName(playerid), text);
		case 26: format(String, sizeof String, "{CC8585}%s:{FFFFFF} %s", getName(playerid), text);
		case 27: format(String, sizeof String, "{AB0000}%s:{FFFFFF} %s", getName(playerid), text);
		default: format(String, sizeof String, "{CECECE}%s:{FFFFFF} %s", getName(playerid), text);
	}

	// {
		// format(String, sizeof String, "(cellphone) %s: %s", getName(playerid), text);
		// if(playerOnline(Mobile[playerid])) if(Mobile[Mobile[playerid]] == playerid) SendClientMessage(Mobile[playerid], COLOR_YELLOW, String);
	// }*/
	if(playerVariables[playerid][pCall] == 1) {
		va_SendClientMessage(playerid, COLOR_GREY, "(cellphone) %s: %s", getName(playerid), text);

		if(playerVariables[playerid][pPhoneCalled] == playerid) va_SendClientMessage(playerVariables[playerid][pPhoneCaller], COLOR_GREY, "(cellphone) %s says: %s", getName(playerid), text);
		else va_SendClientMessage(playerVariables[playerid][pPhoneCalled], COLOR_GREY, "(cellphone) %s says: %s", getName(playerid), text);

		new msg[150]; format(msg, sizeof(msg), "(cellphone) \"%s\"", text);
		SetPlayerChatBubble(playerid, msg, 0xFFFFFFCC, 20.0, 10000);

		// playerVariables[playerid][pPhoneCredit] -= 0.2;
		// gQuery[0] = EOS;
		// mysql_format(SQL, gQuery, sizeof(gQuery), "update `server_accounts` set `playerPhoneCredit` = '%f' where `playerID` = '%d'", playerVariables[playerid][pPhoneCredit], playerVariables[playerid][pSQLID]);
		// mysql_tquery(SQL, gQuery, "", "");
		return 0;
	}
	if(trivia_event == 1 && playerVariables[playerid][pMute] == 0 && strsame(text, trivia, true)) {

		va_SendClientMessageToAll(0xA9C4E4FF, "Trivia: %s a ghicit cuvantul! Acesta fiind %s.", getName(playerid), trivia);
		GivePlayerCash(playerid, 200000);
		playerVariables[playerid][pPremiumPoints] ++, updateINT(playerid, "PremiumPoints", playerVariables[playerid][pPremiumPoints]);
		if(playerVariables[playerid][pActivePerk] == 1) {
			new rp = random(4);
			playerVariables[playerid][pRespect] += rp, updateINT(playerid, "Respect", playerVariables[playerid][pRespect]);
			SendFormatMessage(playerid, COLOR_GREEN, "(+) %d RP (RP Perk)", rp);
		}
		switch(random(100)) {
			case 0..10: {
				playerVariables[playerid][pShampange][2] ++, saveShampanges(playerid);
				SendClientMessage(playerid, COLOR_SERVER, "Trivia: Ai primit $200,000, 1 diamant si o sampanie Lanson! (10%%)");
			
			}
			default: {
				SendClientMessage(playerid, COLOR_SERVER, "Trivia: Ai primit $200,000 si 1 diamant");
			}
		}
		trivia_event = 0;
	}

	// SendCloseMessage(playerid, -1, String, 20.0);
	ProxDetector(20.0, playerid, String, COLOR_YELLOW);

	format(String, sizeof String, "\"%s\"", text);
	SetPlayerChatBubble(playerid, String, 0xFFFFFFCC, 10.0, 10000);
	BigEarMessage(playerid, String, "/CHAT");

	return false;
}
public OnEnterExitModShop( playerid, enterexit, interiorid )
{
	switch( enterexit )
	{
		case 0: // exit
		{
			playerInMod[playerid] = 0;
		}
		case 1: // enter
		{
			if( GetPlayerState( playerid ) == PLAYER_STATE_DRIVER )
			{
				playerInMod[playerid] = 1;
			}
		}
	}
	return true;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	SetPVarInt(playerid, "KilledFlood", GetPVarInt(playerid, "KilledFlood") + 1);

	if(isPlayerLogged[playerid])
	{
		if(GetPVarInt(playerid, "jobWorking") > 0) stopJobWorking(playerid);
		if(Iter_Contains(Event, playerid)) Iter_Remove(Event, playerid);
		if(playerVariables[playerid][pWantedLevel] > 0) {
			new Count;
			foreach(new i : Player) {
				if(isCop(i) && playerVariables[i][pDuty] && CrimInRange(75.0, playerid, i)) {
					Count = 1;
					SendFormatMessage(i, COLOR_DBLUE, "Ai primit $%s bonus pentru prinderea lui %s.", FormatNumber(playerVariables[playerid][pWantedLevel] * 500), getName(playerid));
					GameTextForPlayer(i, "~b~Running Suspect bonus!", 5000, 1), PlayerPlaySound(i, 1058, 0.0, 0.0, 0.0);
					
					giveRaportPoint(i, 0);
					GivePlayerCash(i, playerVariables[playerid][pWantedLevel] * 500);
					giveTaskProgress(i, BP_QUEST_ROB_OR_WANTED, 1), giveTaskProgress(i, BP_QUEST_KILL_COP_OR_WANTED, 1);
					giveTaskProgress(i, BP_QUEST_SELL_GUN_OR_ARREST, 1);
				}
			}
			if(Count) {
				new 
					String[130],
					Query[113],
					jailTime = playerVariables[playerid][pWantedLevel] * 150;

				if(killerid == INVALID_PLAYER_ID) format(String, sizeof String, "Dispatch: %s suicided near cops and will be in jail for %d seconds, over.", getName(playerid), jailTime);
				else format(String, sizeof String, "Dispatch: %s has been killed by %s and will be in jail for %d seconds, over.", getName(playerid), getName(killerid), jailTime);
				for(new x = 1; x < 4; x++) SendFamilyMessage(x, 0x00aaffff, String);

				SendFormatMessage(playerid, COLOR_LIGHTRED, "Because you have wanted, you will be in jail for %s minutes!", getMinutes(jailTime));
				playerVariables[playerid][pJailTime] = jailTime;
				playerVariables[playerid][pWantedLevel] = playerVariables[playerid][pWantedTime] = 0;
				SetPlayerWantedLevel(playerid, 0);
				DisablePlayerCheckpointEx(playerid);

				mysql_format(SQL, Query, sizeof Query, "UPDATE `players` SET `WantedLevel`=0, `WantedTime`=0, `JailTime`=%d WHERE `ID`=%d;", jailTime, getDatabaseID(playerid));
				mysql_tquery(SQL, Query, "", "");

				if(playerVariables[playerid][pDuty] == true) playerVariables[playerid][pDuty] = false;
				ClearCrime(playerid);
			}
		}


		if(playerVariables[playerid][pBoosted] > 0) {
			foreach(new i : Player) {
				if(boostedRange(15.0, playerid, i)) {
					GameTextForPlayer(killerid, "~b~Boosted bonus!", 5000, 1), PlayerPlaySound(i, 1058, 0.0, 0.0, 0.0);
					
					boostActive = false;

				}
				
			}
			GivePlayerCash(killerid, moneyBoosted);
			playerVariables[playerid][pBoosted] = 0;
			playerVariables[killerid][pPremiumPoints] += ppBoosted, updateINT(killerid, "PremiumPoints", playerVariables[killerid][pPremiumPoints]);
			moneyBoosted = ppBoosted = -1;
			va_SendClientMessageToAll(COLOR_SERVER, "Boost Event >> {FFFFFF}Castigator: %s", getName(killerid));
		}
		if(GetPVarInt(playerid, "ROB3")) {
			SendClientMessage(playerid, COLOR_SERVER, "Server: {ffffff}Heist failed!");
			SetPlayerWantedLevel(playerid, 6);
			playerVariables[playerid][pWantedTime] = 900;
			updateINT(playerid, "WantedTime", 900);
			updateINT(playerid, "WantedLevel", 6);

		}
		if(killerid != INVALID_PLAYER_ID)
		{

			new 
				Query[160];

			mysql_format(SQL, Query, sizeof Query, "INSERT INTO `logs_kills` (`Player`, `Name`, `By`, `Distance`) VALUES (%d, '%s', '%s', '%0.2f')", 
				getDatabaseID(playerid), getName(playerid), getName(killerid), GetPlayerDistanceFromPlayer(playerid, killerid));
			mysql_tquery(SQL, Query, "", "");

			if(playerVariables[playerid][pWantedLevel] > 0 && isCop(killerid) && playerVariables[killerid][pDuty]) playerToJail(playerid, killerid);

			// isKilledAtWar(playerid, killerid, reason);
			checkPaintKill(playerid, killerid, reason);
			ADeathMessage(playerid, killerid, reason);

			finishHit(killerid, playerid, reason);

			if(isCop(playerid) && playerVariables[playerid][pDuty] && !isCop(killerid)) giveTaskProgress(killerid, BP_QUEST_KILL_COP_OR_WANTED, 1);
		}
	}

	return true;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	

	return true;
}
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(strfind(inputtext, "%", true) != -1) 
		return SendClientMessage(playerid, COLOR_GREY, "Invalid dialog characters!");

	if(strfind(inputtext, "`", true) != -1) 
		return SendClientMessage(playerid, COLOR_GREY, "Invalid dialog characters!");

	return true;
}
public OnPlayerModelSelection(playerid, response, listid, modelid)
{
	if(listid == defaultSkins)
	{
		if(!response) return true;

		SetPlayerSkinEx(playerid, modelid);
		giveBizFee(playerid, getPlayerBiz(playerid));

		GivePlayerCash(playerid, - 500);
		GameTextForPlayer(playerid, "~r~-$500", 5000, 1);
		SendClientMessage(playerid, -1, "You have successfully changed your skin!");
		giveTaskProgress(playerid, BP_QUEST_CLOTHES, 1);
	}
	return true;
}
public OnQueryError(errorid, const error[], const callback[], const query[], MySQL:handle)
{
	if(errorid == 2003)
	{
		SendClientMessageToAll(COLOR_CLIENT, "Server: We have problems with our database!");
		SendClientMessageToAll(COLOR_CLIENT, "Server: You got kicked. The server will come back.. please wait some time!");
		foreach(new i : Player) KickEx(i);

		SendRconCommand("hostname gameforplay.ro - Loading server..");
		SendRconCommand("password abcdef");
		return true;
	}
	print("====================================================================");
	printf("Error ID: %d, Error: %s", errorid, error);
	printf("Callback: %s", callback);
	printf("gQuery: %s", query);
	print("====================================================================");

	return true;
}
public OnPlayerTakeDamage( playerid, issuerid, Float:amount, weaponid, bodypart )
{
	if(weaponid == WEAPON_SPRAYCAN && !isCop(playerid) && !playerVariables[playerid][pDuty]) 
		return true;

	PlayerPlaySound(playerid, 17802, 0.0, 0.0, 0.0);

	if(weaponid == WEAPON_SNIPER) amount = 100.0;
	if(weaponid == WEAPON_KNIFE && playerVariables[issuerid][pHeadValue] > 0 && amount >= 99) finishHit(playerid, issuerid, WEAPON_KNIFE);

	if(GetPVarInt(playerid, "Paint_Type") != 0 && GetPVarInt(issuerid, "Paint_Type") != 0)
	{
		if(weaponid == 24) giveTaskProgress(playerid, BP_QUEST_DAMAGE_PAINT, 46);
		else if(weaponid == 31) giveTaskProgress(playerid, BP_QUEST_DAMAGE_PAINT, 10);
		else if(weaponid == 8) giveTaskProgress(playerid, BP_QUEST_DAMAGE_PAINT, 3);
	}
	/*if(showedDMG[issuerid])
	{
		comboDMG[playerid] ++;
		stop timerDMG[issuerid];
		stop timerDMG[playerid];
	}
	else comboDMG[playerid] = 0;

	new 
		weaponName[22] = "Fist";

	if(GetPlayerWeapon(playerid) > 0) GetWeaponName(weaponid, weaponName, sizeof weaponName);

	if(playerVariables[issuerid][pHUD][1] && !GetPVarInt(playerid, p"Undercover_ON"))
	{
		new 
			String[65];

		if(comboDMG[playerid] > 0) format(String, sizeof String, "%s~n~~r~-%0.1f HP with %s (%dx)", getName(playerid), amount, weaponName, comboDMG[playerid] + 1);
		else format(String, sizeof String, "%s~n~~r~-%0.1f HP with %s", getName(playerid), amount, weaponName);

		PlayerTextDrawSetString(issuerid, HUDTD[issuerid][3], String);
		PlayerTextDrawShow(issuerid, HUDTD[issuerid][3]);
		timerDMG[issuerid] = defer DMGInformer(issuerid);
	
	}*/
	foreach(new x : Player) if(Spectate[x] == playerid && playerVariables[x][pAdmin] > 0) va_SendClientMessage(x, COLOR_DARKPINK, "DMG: %s did %f damage to %s using a %s. [bodypart: %d]", getName(playerid), amount, getName(issuerid), weapName(weaponid), bodypart);

	return true;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	
	gLastCar[playerid] = vehicleid;
	if(!ispassenger) {
		SetPVarInt(playerid, "AC_VEHTICK", gettime() + 7);
	}

	return true;
}