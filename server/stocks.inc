#include <YSI_Coding\y_hooks>

stock DisablePlayerCheckpointEx(playerid) return DisablePlayerCheckpoint(playerid), playerCheckpoint[playerid] = CHECKPOINT_NONE;

stock Slap(playerid) {
    new Float:X, Float:Y, Float:Z;
    GetPlayerPos(playerid, X, Y, Z);
    SetPlayerPos(playerid, X, Y, Z+5);
    slapped[playerid] = 1;
    return 1;
}
#if defined ANTI_CHEAT

stock GetCheatName( code ) 
{
	new string[64];
	switch( code ) 
	{
		case 0: string = "possible airbreak #1";
		case 1: string = "possible airbreak #2";
		case 2: string = "possible teleport-hack #1";
		case 3: string = "possible vehicle-teleport #2";
		case 4: string = "possible vehicle-teleport #3";
		case 5: string = "possible vehicle-teleport #4";
		case 6: string = "possible vehicle-teleport #5";
		case 7: string = "possible fly-hack #1";
		case 8: string = "possible fly-hack #2";
		case 9: string = "possible speed-hack #1";
		case 10: string = "possible speed-hack #2";
		case 11: string = "possible health-hack #1";
		case 12: string = "possible health-hack #2";
		case 13: string = "possible armour-hack";
		case 14: string = "possible money-hack";
		case 15: string = "possible weapon-hack";
		case 16: string = "possible ammo-hack #1";
		case 17: string = "possible ammo-hack #2";
		case 18: string = "possible special-actions";
		case 19: string = "possible godmode #1";
		case 20: string = "possible godmode #2";
		case 21: string = "possible invisible-hack";
		case 22: string = "possible lagcomp-spoof";
		case 23: string = "possible tuning-hack";
		case 24: string = "possible parkour-mod";
		case 25: string = "possible quick-turn(vehicle)";
		case 26: string = "possible rapid-fire";
		case 27: string = "possible fakespawn";
		case 28: string = "possible fakekill";
		case 29: string = "possible pro-aim";
		case 30: string = "possible cj-run";
		case 31: string = "possible carshot";
		case 32: string = "possible carjack";
		case 33: string = "possible unfreeze";
		case 34: string = "possible afk-ghost";
		case 35: string = "possible full-aim";
		case 36: string = "possible fake-npc";
		case 37: string = "possible reconnect";
		case 38: string = "possible high-ping";
		case 39: string = "possible dialog-hack";
		case 40: string = "possible VPN";
		case 41: string = "possible invalid-sa:mp-version";
		case 42: string = "possible rcon-hack";
		case 43: string = "possible tunning-crasher";
		case 44: string = "possible seat-crasher";
		case 45: string = "possible dialog-crasher";
		case 46: string = "possible a-object-crasher";
		case 47: string = "possible weapon-crasher";
		case 48: string = "possible flood #1";
		case 49: string = "possible flood #2";
		case 50: string = "possible flood #3";
		case 51: string = "possible ddos";
		case 52: string = "possible mop";
	}
	return string;
}

forward OnCheatWarning(playerid, ip_address[], type, code, code2, count);
public OnCheatWarning(playerid, ip_address[], type, code, code2, count)
{
	#pragma unused count
	if( playerVariables[ playerid ][ pAdmin ] < 1 )
	{
		if(code != 0 && code != 1 && code != 2 && code != 38 && code != 39 && code != 41 && code!=1 && code!=2 && code!=52 && code!=26)
		{
			if( AC_VAR[ code ] )
			{
				if( GetPVarInt( playerid, "player_w") < 3 && GetPVarInt( playerid, "player_time") < gettime( ) )
				{
					AdminBroadCast( 1, COLOR_RED, "[ANTICHEAT] %s is suspect for using %s [%d warnings]! (/spec %d)", getNameEx( playerid ), GetCheatName( code ), GetPVarInt(playerid, "player_w"), playerid);
					SetPVarInt( playerid, "player_w", GetPVarInt( playerid, "player_w") + 1);
					
					if(GetPVarInt(playerid, "player_w") == 1 ) 
						SetPVarInt( playerid, "player_time", gettime( ) + 3);
				}
				else if( GetPVarInt( playerid, "player_w") == 3)
				{
                    return AdminBotKickPlayer(playerid, GetCheatName( code ), false);
				}
			}
		}
		else if( code == 6 )
		{
			if( AC_VAR[ 6 ] )
			{	
				if( count == 2 )
				{
					// if( isPlayerInWar(playerid) != 0 )
					// {

					// }
					/*else*/ 
					return AdminBotKickPlayer(playerid, GetCheatName( code ), false);
				}
			}	
		}
		else if( code == 23 )
		{
			if( AC_VAR[ 23 ] )
			{
			   if( playerInMod[playerid] == 0 )
			   {
					if( count == 2 )
					{
						AdminBroadCast( 1, COLOR_RED, "[ANTICHEAT] %s is suspect for using %s [%d warnings]! (/spec %d)", getNameEx( playerid ), GetCheatName( code ), GetPVarInt(playerid, "player_w"), playerid);
						va_SendClientMessage(playerid, -1, "%s, %d", GetCheatName( code ), GetPVarInt(playerid, "player_w"));
						return AdminBotKickPlayer(playerid, GetCheatName( code ), false);
					}
				}
			}	
		}
	}
	return 1;
}

forward OnCheatDetected(playerid, ip_address[], type, code);
public OnCheatDetected(playerid, ip_address[], type, code)
{
	if(playerVariables[playerid][pAdmin] < 1)
	{	
		if(code != 0 && code != 1 && code !=2 && code != 4 && code != 5 && code != 6 && code != 12 && code != 14 && code != 32 && code != 38 && code != 39 && code != 40 && code != 49 && code !=52 && code!=26)
		{
			if( AC_VAR[ code ] )
			{
				if( GetPVarInt( playerid, "player_w") < 3 && GetPVarInt( playerid, "player_time") < gettime( ) )
				{
					AdminBroadCast( 1, COLOR_RED, "[ANTICHEAT] %s is suspect for using %s [%d warnings]! (/spec %d)", getNameEx( playerid ), GetCheatName( code ), GetPVarInt(playerid, "player_w"), playerid);
					SetPVarInt( playerid, "player_w", GetPVarInt( playerid, "player_w") + 1);
					SetPVarInt( playerid, "player_time", gettime( ) + 3);
				}
				else if( GetPVarInt( playerid, "player_w") == 3)
				{
                    return AdminBotKickPlayer(playerid, GetCheatName( code ), false);
				}
			}
		}
		else if( code == 6 || code == 49 )
		{
			if( AC_VAR[ code ] )
			{
				/*if( isPlayerInWar(playerid) != 0 )
				{
				
				}
				else */
				return AdminBotKickPlayer(playerid, "possible pickup-teleport", false); // to pickups
			}	
		}
		else if( code == 23 )
		{
			if(AC_VAR[ code ] )
			{	
				if( playerInMod[playerid] == 0 )
				{
					return AdminBotKickPlayer(playerid, "possible tuning-hack", false); // Tuning hack
				}
			}	
		}
	}	
	return 1;
}
#endif



stock load_login(playerid) {
	ptd_login[0] = CreatePlayerTextDraw(playerid, 320.000000, 140.000000, "_");
	PlayerTextDrawFont(playerid, ptd_login[0], 1);
	PlayerTextDrawLetterSize(playerid, ptd_login[0], 0.733333, 27.000001);
	PlayerTextDrawTextSize(playerid, ptd_login[0], 298.500000, 110.000000);
	PlayerTextDrawSetOutline(playerid, ptd_login[0], 1);
	PlayerTextDrawSetShadow(playerid, ptd_login[0], 0);
	PlayerTextDrawAlignment(playerid, ptd_login[0], 2);
	PlayerTextDrawColor(playerid, ptd_login[0], -1);
	PlayerTextDrawBackgroundColor(playerid, ptd_login[0], 255);
	PlayerTextDrawBoxColor(playerid, ptd_login[0], 135);
	PlayerTextDrawUseBox(playerid, ptd_login[0], 1);
	PlayerTextDrawSetProportional(playerid, ptd_login[0], 1);
	PlayerTextDrawSetSelectable(playerid, ptd_login[0], 0);

	ptd_login[1] = CreatePlayerTextDraw(playerid, 320.000000, 140.000000, "LOGIN");
	PlayerTextDrawFont(playerid, ptd_login[1], 3);
	PlayerTextDrawLetterSize(playerid, ptd_login[1], 0.475000, 1.250000);
	PlayerTextDrawTextSize(playerid, ptd_login[1], 400.000000, 109.500000);
	PlayerTextDrawSetOutline(playerid, ptd_login[1], 1);
	PlayerTextDrawSetShadow(playerid, ptd_login[1], 0);
	PlayerTextDrawAlignment(playerid, ptd_login[1], 2);
	PlayerTextDrawColor(playerid, ptd_login[1], -1029514497);
	PlayerTextDrawBackgroundColor(playerid, ptd_login[1], 255);
	PlayerTextDrawBoxColor(playerid, ptd_login[1], 255);
	PlayerTextDrawUseBox(playerid, ptd_login[1], 1);
	PlayerTextDrawSetProportional(playerid, ptd_login[1], 1);
	PlayerTextDrawSetSelectable(playerid, ptd_login[1], 0);

	ptd_login[2] = CreatePlayerTextDraw(playerid, 287.000000, 165.000000, "Preview_Model");
	PlayerTextDrawFont(playerid, ptd_login[2], 5);
	PlayerTextDrawLetterSize(playerid, ptd_login[2], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, ptd_login[2], 62.500000, 120.000000);
	PlayerTextDrawSetOutline(playerid, ptd_login[2], 0);
	PlayerTextDrawSetShadow(playerid, ptd_login[2], 0);
	PlayerTextDrawAlignment(playerid, ptd_login[2], 1);
	PlayerTextDrawColor(playerid, ptd_login[2], -1);
	PlayerTextDrawBackgroundColor(playerid, ptd_login[2], 0);
	PlayerTextDrawBoxColor(playerid, ptd_login[2], 255);
	PlayerTextDrawUseBox(playerid, ptd_login[2], 0);
	PlayerTextDrawSetProportional(playerid, ptd_login[2], 1);
	PlayerTextDrawSetSelectable(playerid, ptd_login[2], 0);
	PlayerTextDrawSetPreviewModel(playerid, ptd_login[2], 292);
	PlayerTextDrawSetPreviewRot(playerid, ptd_login[2], -10.000000, 0.000000, -2.000000, 0.899999);
	PlayerTextDrawSetPreviewVehCol(playerid, ptd_login[2], 1, 1);

	ptd_login[3] = CreatePlayerTextDraw(playerid, 319.000000, 286.000000, "danielsy~N~(2929292)");
	PlayerTextDrawFont(playerid, ptd_login[3], 3);
	PlayerTextDrawLetterSize(playerid, ptd_login[3], 0.345833, 0.900000);
	PlayerTextDrawTextSize(playerid, ptd_login[3], 400.000000, 114.500000);
	PlayerTextDrawSetOutline(playerid, ptd_login[3], 1);
	PlayerTextDrawSetShadow(playerid, ptd_login[3], 0);
	PlayerTextDrawAlignment(playerid, ptd_login[3], 2);
	PlayerTextDrawColor(playerid, ptd_login[3], -1029514497);
	PlayerTextDrawBackgroundColor(playerid, ptd_login[3], 255);
	PlayerTextDrawBoxColor(playerid, ptd_login[3], 255);
	PlayerTextDrawUseBox(playerid, ptd_login[3], 0);
	PlayerTextDrawSetProportional(playerid, ptd_login[3], 1);
	PlayerTextDrawSetSelectable(playerid, ptd_login[3], 0);

	ptd_login[4] = CreatePlayerTextDraw(playerid, 319.000000, 333.000000, "login");
	PlayerTextDrawFont(playerid, ptd_login[4], 3);
	PlayerTextDrawLetterSize(playerid, ptd_login[4], 0.479166, 1.600000);
	PlayerTextDrawTextSize(playerid, ptd_login[4], 16.500000, 90.500000);
	PlayerTextDrawSetOutline(playerid, ptd_login[4], 1);
	PlayerTextDrawSetShadow(playerid, ptd_login[4], 0);
	PlayerTextDrawAlignment(playerid, ptd_login[4], 2);
	PlayerTextDrawColor(playerid, ptd_login[4], -1);
	PlayerTextDrawBackgroundColor(playerid, ptd_login[4], 255);
	PlayerTextDrawBoxColor(playerid, ptd_login[4], 200);
	PlayerTextDrawUseBox(playerid, ptd_login[4], 0);
	PlayerTextDrawSetProportional(playerid, ptd_login[4], 1);
	PlayerTextDrawSetSelectable(playerid, ptd_login[4], 1);

	ptd_login[5] = CreatePlayerTextDraw(playerid, 320.000000, 372.000000, "copyright (gameforplay.ro)");
	PlayerTextDrawFont(playerid, ptd_login[5], 3);
	PlayerTextDrawLetterSize(playerid, ptd_login[5], 0.187500, 1.150000);
	PlayerTextDrawTextSize(playerid, ptd_login[5], 400.000000, 109.500000);
	PlayerTextDrawSetOutline(playerid, ptd_login[5], 1);
	PlayerTextDrawSetShadow(playerid, ptd_login[5], 0);
	PlayerTextDrawAlignment(playerid, ptd_login[5], 2);
	PlayerTextDrawColor(playerid, ptd_login[5], -1029514497);
	PlayerTextDrawBackgroundColor(playerid, ptd_login[5], 255);
	PlayerTextDrawBoxColor(playerid, ptd_login[5], 255);
	PlayerTextDrawUseBox(playerid, ptd_login[5], 1);
	PlayerTextDrawSetProportional(playerid, ptd_login[5], 1);
	PlayerTextDrawSetSelectable(playerid, ptd_login[5], 0);
	return true;
}

stock AdminBotKickPlayer(Player, Reason[], type )
{
	if( !IsPlayerConnected( Player ) )							return 1;
	if( playerVariables[ Player ][ pAdmin ] >= 6 )			    return 1;
	if( strlen( Reason ) < 5 || strlen( Reason ) > 64 )		  	return 1;
	if( GetPVarInt( Player, "player_w") != 0 )
	        SetPVarInt( Player, "player_w", 0 );
	switch( type )
	{
		case false: // Global
		{
			va_SendClientMessageToAll( COLOR_LIGHTRED, "%s has been kicked by Admbot, reason: %s", getNameEx( Player ), Reason );
		}
		case true: // Silent
		{
			AdminBroadCast( 1, COLOR_LIGHTRED, "%s has been kicked by Admbot, reason: %s", getNameEx( Player ), Reason );
		}
	}
	return Kick( Player );
}

stock FormatNumber( number )
{
   new Str[ 15 ];
   format( Str, 15, "%d", number );

   if( strlen( Str ) < 15 )
   {
      if( number >= 1000 && number < 10000 )
             strins( Str, ".", 1, sizeof( Str ) );

      else if( number >= 10000 && number < 100000 )
           strins( Str, ".", 2, sizeof( Str ) );

      else if( number >= 100000 && number < 1000000 )
           strins( Str, ".", 3, sizeof( Str ) );

      else if( number >= 1000000 && number < 10000000 )
           strins( Str, ".", 1, sizeof( Str ) ),strins( Str, ".", 5, sizeof( Str ) );

      else if( number >= 10000000 && number < 100000000 )
           strins( Str, ".", 2, sizeof( Str ) ),strins( Str, ".", 6, sizeof( Str ) );

      else if( number >= 100000000 && number < 1000000000 )
           strins( Str, ".", 3, sizeof( Str ) ),strins( Str, ".", 7, sizeof( Str ) );

      else if( number >= 1000000000 && number < 10000000000 )
           strins( Str, ".", 1, sizeof( Str ) ),
           strins( Str, ".", 5, sizeof( Str ) ),
           strins( Str, ".", 9, sizeof( Str ) );
      else format( Str, 10, "%d", number );
   }
   else format( Str, 15, "<ERROR>" );
   return Str;
}
stock ProxDetector(Float:radi, playerid, const string[], color, Float:x=0.0,Float:y=0.0,Float:z=0.0) {
	GetPlayerPos(playerid, x, y, z);

	foreach(new i : playerStream[playerid]) {
		if !PlayerToPoint(radi, i,x,y,z) || GetPlayerInterior(playerid) != GetPlayerInterior(i) || GetPlayerVirtualWorld(playerid) != GetPlayerVirtualWorld(i) *then continue;
		SendClientMessage(i, color, string);
	}
	return true;
}

stock SendCloseMessage(playerid, color, const message[], Float:range = 5.0)
{
	new 
		playerVirtual = GetPlayerVirtualWorld(playerid);

	foreach(new i : playerStream[playerid])
	{
		if(playerOnline(i) && IsPlayerInRangeOfPoint(i, range, playerVariables[playerid][playerPosX], playerVariables[playerid][playerPosY], playerVariables[playerid][playerPosZ]) 
			&& GetPlayerVirtualWorld(i) == playerVirtual && !bigEar[i]) SendClientMessage(i, color, message);

		else if(playerOnline(i) && bigEar[i] && playerVariables[i][pAdmin] > 0) SendClientMessage(i, color, message);
	}

	return true;
}
stock vehicleSpeed(playerid)
{
	new
		Float: speedX, Float: speedY, Float: speedZ;

	GetVehicleVelocity(GetPlayerVehicleID(playerid), speedX, speedY, speedZ);
	return floatround(1.61 * floatsqroot(floatpower(floatabs(speedX), 2.0) + floatpower(floatabs(speedY), 2.0) + floatpower(floatabs(speedZ), 2.0)) * 99.38);
}

stock SendFormatMessage(playerid, color, const fmat[], va_args<>)
{
	new 
		String[100];

	va_format(String, sizeof String, fmat, va_start<3>);
	return SendClientMessage(playerid, color, String);
}

stock va_SendAdminsMessage(admlevel, color, const fmat[], va_args<>)
{
	new 
		String[100];

	va_format(String, sizeof String, fmat, va_start<3>);
	foreach(new i : Admins) if(playerVariables[i][pAdmin] >= admlevel)  SendClientMessage(i, color, String);
	return true;
}

stock va_SendCloseMessage(playerid, color, const fmat[], va_args<>)
{
	new 
		playerVirtual = GetPlayerVirtualWorld(playerid),
		String[100];

	va_format(String, sizeof String, fmat, va_start<3>);
	foreach(new i : Player)
	{
		if(playerOnline(i) && IsPlayerInRangeOfPoint(i, 15.0, playerVariables[playerid][playerPosX], playerVariables[playerid][playerPosY], playerVariables[playerid][playerPosZ]) 
			&& GetPlayerVirtualWorld(i) == playerVirtual && !bigEar[i]) SendClientMessage(i, color, String);

		else if(playerOnline(i) && bigEar[i] && playerVariables[i][pAdmin] > 0) SendClientMessage(i, color, String);
	}

	return true;
}

stock formatPlayerTextDraw(playerid, PlayerText: text, const fmat[], va_args<>)
{
	va_format(sString, sizeof sString, fmat, va_start<3>);
	return PlayerTextDrawSetString(playerid, text, sString);
}

stock SendDeelayMessage(playerid, color, const fmat[], va_args<>)
{
	new String[30];
	va_format(String, sizeof String, fmat, va_start<3>);
	return SendClientMessage(playerid, color, String);
}

stock IsMail(const string[])
{
	new 
		find_@,
		dots_after_@,
		num_repeating_points,
		i, c;

	while((c = string[i++]) != '\0')
	{
		switch(c) {
			case 'A'..'Z', 'a'..'z', '-', '_', '0'..'9':
			{
				num_repeating_points = 0;
				continue;
			}
			case '@':
			{
				if(i == 1) return 0;
				find_@ ++;
			}
			case '.':
			{
				if(!find_@) {
					if(num_repeating_points) return 0;
					num_repeating_points++;
					continue;
				}
				if(++ dots_after_@ > 2) return 0;
			}
			default: return 0;
		}
	}
	if(find_@ != 1 || dots_after_@ == 0) return 0;

	return 1;
}
stock SendAdminsMessage(color, fromLevel, const message[])
{
	foreach(new i : Admins) if(isPlayerLogged[i] && !togAC[i] && playerVariables[i][pAdmin] >= fromLevel) SendClientMessage(i, color, message);

	return true;
}

stock va_SendFamilyMessage(factionid, color, const fmat[], va_args<>)
{
	new 
		String[100];

	va_format(String, sizeof String, fmat, va_start<3>);
	foreach(new i : Player)
	{
		if(playerOnline(i) && !togFC[i])
		{
			if(playerVariables[i][pMember] == factionid) SendClientMessage(i, color, String);
			if(GetPVarInt(i, "factionSpec") == factionid) SendClientMessage(i, 0x0080FFFF, String);
		}
	}

	return true;
}

stock SendFamilyMessage(factionid, color, const message[])
{
	foreach(new i : Player)
	{
		if(playerOnline(i) && !togFC[i])
		{
			if(playerVariables[i][pMember] == factionid) SendClientMessage(i, color, message);
			if(GetPVarInt(i, "factionSpec") == factionid) SendClientMessage(i, 0x0080FFFF, message);
		}
	}

	return true;
}

stock playerOnline(playerid) {

	if(!IsPlayerConnected(playerid) || !isPlayerLogged[playerid] || playerid == INVALID_PLAYER_ID) return false;

	return true;
}

stock IsABoat(carid) {
	for(new i = 0; i < MAX_BOATS; i++) {
		if(GetVehicleModel(carid) == boatVehicles[i]) return true;
	} return false; }
stock IsABike(carid) {
	for(new i = 0; i < MAX_BIKES; i++) {
		if(GetVehicleModel(carid) == bikeVehicles[i]) return true;
	} return false; }
stock IsAPlane(carid) {
	for(new i = 0; i < MAX_PLANES; i++) {
		if(GetVehicleModel(carid) == planeVehicles[i]) return true;
	} return false; }
stock IsAMoto(carid) {
	for(new i = 0; i < MAX_MOTO; i++) {
		if(GetVehicleModel(carid) == motoVehicles[i]) return true;
	} return false; }

stock isValidVIP(carid) {
	for(new i = 0; i < MAX_VIP_MODELS; i++) {
		if(GetVehicleModel(carid) == vipModels[i]) return true;
	} return false; }

stock stopExamen(playerid, reason = 0) {

	if(!reason) SendClientMessage(playerid, COLOR_RED, "You failed your driving exam! You can try again.");
	else
	{
		SendClientMessage(playerid, COLOR_GREEN, "Congratulations! Now you have a driving licence for 100 hours.");
		SendClientMessage(playerid, -1, "Use /licenses (or /licences) for more details about your licence.");
	}

	if(reason < 2)
	{
		DisablePlayerRaceCheckpoint(playerid);
		SetPlayerPosEx(playerid, 1286.8000,-1329.0944,13.5549);
		SetPlayerVirtualWorld(playerid, 0);
	}

	playerRaceCheckpoint[playerid] = 0;
	DestroyVehicleEx(examVehicle[playerid]);
	DestroyDynamicObject(examObject[playerid]);
	examVehicle[playerid] = INVALID_VEHICLE_ID;
	PlayerTextDrawHide(playerid, dmvText[playerid]);
	PlayerTextDrawHide(playerid, dmvTD[playerid]);
	DeletePVar(playerid, "inExam");

	return true;
}

stock updateDMVTextdraws(playerid) {

	new 
		checkPoints = playerRaceCheckpoint[playerid],
		String[70], Float: vehicleHealth;

	GetVehicleHealth(examVehicle[playerid], vehicleHealth);

	format(String, sizeof String, "~n~CHECKPOINT:_~y~%d~w~/15~n~VEHICLE_HEALTH:_%0.1f/~r~700.0_~w~HP", checkPoints, vehicleHealth);
	PlayerTextDrawSetString(playerid, dmvText[playerid], String);

	if(vehicleHealth < 700) stopExamen(playerid);

	return true;
}

stock completeRegister(playerid) {

	switch(playerVariables[playerid][pRegistred]) {
		case 0: Dialog_Show(playerid, DIALOG_REGISTER_EMAIL, DIALOG_STYLE_INPUT, "Server: Register - Email", "Enter your email address below.\nYou will use this to reset/recover your password when you want!", "Next", "Close");
		case 1: Dialog_Show(playerid, DIALOG_REGISTER_AGE, DIALOG_STYLE_INPUT, "Server: Register - Age", "Enter your age below!", "Next", "Close");
		case 2:{ 
			final_Register(playerid);
		}
	}

	return true;
}

stock toggleSpectate(playerid)
{
	TogglePlayerControllable(playerid, 1);
	TogglePlayerSpectating(playerid, 0);
	PlayerTextDrawHide(playerid, SpecTD[playerid]);
	Spectate[playerid] = INVALID_PLAYER_ID;

	return true;
}
stock resetVariables(playerid) {

	playerVariables[playerid][pAdmin] = playerVariables[playerid][pSQL] = 0;
	playerVariables[playerid][pReclamer] = playerVariables[playerid][pPremium] = playerVariables[playerid][pVIP] = -1;
	isPlayerLogged[playerid] = playerFrozen[playerid] = gPlayerUsingLoopingAnim[playerid] = false;//isPlayerDeath[playerid] = false;
	playerRaceCheckpoint[playerid] = playerCheckpoint[playerid] = bigEar[playerid] = warnings[playerid] = SpectateState[playerid] = 0;
	selectedItem[playerid]  = selectedValue[playerid] = matsUsed[playerid] = bidMoney[playerid] = 0;
	gLastCar[playerid] = NewBie_Time[playerid] = pFPS[playerid] = pDrunkLevelLast[playerid] = 0;
	thingAmount[playerid] = thingValue[playerid] = thingType[playerid] = rentVehicle[playerid] = examVehicle[playerid] = 0;
	togPC[playerid]= togVC[playerid]= togWT[playerid]= togFC[playerid]= togHC[playerid]= togAC[playerid]= togLC[playerid] = 0;
	AC_WEAP[playerid] = Rent_Veh_Time[playerid]= tradeCAR[playerid] = -1;
	//RobTimer[playerid] = RobStatus[playerid] = RobActorStart = talkTimer[playerid] = talkStep[playerid] = RobObjects[playerid] = RobActor[playerid] = 0;
 	playerVariables[playerid][pPhoneStatus] = 1;
 	playerVariables[playerid][pJailTime] = 0;
 	playerVariables[playerid][pPhoneCaller] = INVALID_PLAYER_ID;
	playerVariables[playerid][pPhoneCalled] = INVALID_PLAYER_ID;
	clanInvite[playerid] = Reported[playerid] = inviteOffer[playerid] = selectedPlayer[playerid] = targetFind[playerid] = ticketOffer[playerid] = INVALID_PLAYER_ID;
	transferOffer[playerid] = lastSMS[playerid] = freeOffer[playerid] = In_Taxi[playerid] = Player_HIT[playerid] = INVALID_PLAYER_ID;
	Used_Contract[playerid] = HaveNewbie[playerid] = Spectate[playerid] = thingOffer[playerid] = tradeID[playerid] = INVALID_PLAYER_ID;
	RemovePlayerAttachedObject(playerid, INDEX_PHONE);
	marry_request[playerid] = INVALID_PLAYER_ID;
	strdel(lastText[playerid], 0, 128);
	format(Player_Question[playerid], 5, "NULL");
	format(Helper_Answer[playerid], 2, "");
	if(IsValidDynamic3DTextLabel(headLabel[playerid])) {
		Delete3DTextLabel(headLabel[playerid]);
	}
	resetPlayerHouse(playerid);
	resetPlayerBiz(playerid);
	resetPlayerHQ(playerid);


	return true;
}
stock GetPlayerPhoneBySQLID(sqlid) {
	new telefon;
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof(gQuery), "select * from `players` where `ID` = '%d'", sqlid);
	
	new Cache:nume = mysql_query(SQL, gQuery);
	cache_get_value_name_int(0, "Phone", telefon);
	cache_delete(nume);
	return telefon;
}
stock GetPhoneBookContacts(playerid) {
	new count;
	for(new i; i < playerVariables[playerid][pPhoneBookSlots]; i++) if(playerVariables[playerid][pPhoneBook][i] != 0) count++;
	return count;
}
stock SetPlayerPosEx(playerid, Float: X, Float: Y, Float: Z, virtualid = -1, interiorid = -1, integrate_veh = 1) {

	SetPlayerPos(playerid, X, Y, Z);
	GetPlayerPos(playerid, lastPlayerPosX[playerid], lastPlayerPosY[playerid], lastPlayerPosZ[playerid]);
	//serverTeleported(playerid);
	if(virtualid != -1) SetPlayerVirtualWorld(playerid, virtualid);
	if(interiorid != -1) SetPlayerVirtualWorld(playerid, interiorid);

	if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER && integrate_veh) {

		new 
			vehicleid = GetPlayerVehicleID(playerid);

		SetVehiclePos(vehicleid, X, Y, Z);
		SetVehicleVirtualWorld(vehicleid, GetPlayerVirtualWorld(playerid));
		LinkVehicleToInterior(vehicleid, GetPlayerInterior(playerid));
		PutPlayerInVehicle(playerid, vehicleid, 0);

	}

	

	return true;
}

stock SetVehiclePosEx(playerid, vehicleid, Float: X, Float: Y, Float: Z)
{
	SetVehiclePos(vehicleid, X, Y, Z);
	//serverTeleported(playerid);

	return true;
}
stock getMinutes(amount) {

	new 
		sTime = amount,
		Minute,
		Seconde,
		String[10];

	sTime = sTime % 3600;
	Minute = sTime / 60;
	sTime = sTime % 60;
	Seconde = sTime;
	format(String, sizeof String, "%02d:%02d", Minute, Seconde);

	return String; }

stock getHours(amount)
{
	new 
		sTime = amount,
		Hour = sTime / 3600,
		Minute,
		Seconde,
		String[15];

	sTime = sTime % 3600;
	Minute = sTime / 60;
	sTime = sTime % 60;
	Seconde = sTime;
	format(String, sizeof String, "%02d:%02d:%02d", Hour, Minute, Seconde);

	return String;
}

stock CreateVehicleEx(modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2, const plate[], respawn_delay=-1, bool:addsirene = false, forserver = 0) {

	new vehicleid = CreateVehicle(modelid, x, y, z, angle, color1, color2, respawn_delay, addsirene);

	SetVehicleParamsEx(vehicleid, false, false, false, false, false, false, false);
	if(IsABike(vehicleid)) {
		vehicleEngine[vehicleid] = 1;
		SetVehicleParamsEx(vehicleid, false, false, false, false, false, false, false);
	} 
	if(forserver)
	{
		vehicleFuel[vehicleid] = 100;
		if(!IsABike(vehicleid)) vehicleEngine[vehicleid] = 0;

	}

	SetVehicleNumberPlate(vehicleid, plate);
	SetVehicleHealth(vehicleid, 999.0);
	Iter_Add(totalVehicles, vehicleid);
	return vehicleid; }
/*stock CreateVehicleEx(modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2, const plate[], respawn_delay=-1, bool:addsirene = false, forserver = 0) {

	new vehicleid = CreateVehicle(modelid, x, y, z, angle, color1, color2, respawn_delay, addsirene), engine, lights, alarm, doors, bonnet, boot, objective;


	GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);

	if(IsABike(vehicleid)) {

		vehicleEngine[vehicleid] = 1;
		vehicleFuel[vehicleid] = 100;
		SetVehicleParamsEx(vehicleid, VEHICLE_PARAMS_ON, lights, alarm, doors, bonnet, boot, objective);

	} else SetVehicleParamsEx(vehicleid, VEHICLE_PARAMS_OFF, lights, alarm, doors, bonnet, boot, objective);


	if(forserver)
	{
		vehicleFuel[vehicleid] = 100;
		if(!IsABike(vehicleid)) vehicleEngine[vehicleid] = 0;
	}

	SetVehicleNumberPlate(vehicleid, plate);
	SetVehicleHealth(vehicleid, 999.0);
	Iter_Add(totalVehicles, vehicleid);

	#if defined DEBUG_CAR_SPAWNDESPAWN 
		printf("create vehicle %d", vehicleid);
	#endif

	return vehicleid; }*/

stock UpdatePlayerHUD(playerid) {
    new str[128];
    if(playerVariables[playerid][pAdmin] > 5) {
        format(str, sizeof(str), "~r~TICK: %i ~g~PING: %d ~y~FPS: %d ~p~ANIM: %d ~y~MPS: %d", GetServerTickRate()+3, GetPlayerPing(playerid), pFPS[playerid], GetPlayerAnimationIndex(playerid), NetStats_MessagesRecvPerSecond(playerid));
        PlayerTextDrawSetString(playerid, ptd_admin_hud, str);
        PlayerTextDrawShow(playerid, ptd_admin_hud);
    }
    return true;
}

stock IsVehicleOccupied(vehicleid) {

	foreach(new i : Player) {
		if(IsPlayerInVehicle(i, vehicleid)) 
		return true;
	}	

	return false; 
}

stock getDays(time)
{
	new 
		sTime = gettime() - time,
		Days;

	while(sTime > 86399) sTime -= 86400, Days ++;

	return Days;
}

stock DestroyVehicleEx(vehicleid)
{
	if(!IsValidVehicle(vehicleid)) return true;

	DestroyVehicle(vehicleid);
	vehicleFuel[vehicleid] = vehicleEngine[vehicleid] = 0;
	Iter_Remove(totalVehicles, vehicleid);
	if(vehicleMarker[vehicleid]) vehicleMarker[vehicleid] = false;

	if(getPlayerVehicle(vehicleid) > 0)
	{
		vehicleReset(getPlayerVehicle(vehicleid));
		resetOwnedCar(vehicleid);
	}
	
	#if defined DEBUG_CAR_SPAWNDESPAWN 
		printf("destroy car %d", vehicleid);
	#endif

	return true;
}
stock IsPlayerNearVehicle(playerid, vehicleid, Float: range) {

	new 
		Float: X, 
		Float: Y, 
		Float: Z;

	GetVehiclePos(vehicleid, X, Y, Z);
	if(IsPlayerInRangeOfPoint(playerid, range, X, Y, Z)) return true;

	return false; }

stock Float:GetDistanceBetweenPoints(Float: X_1, Float: Y_1, Float: Z_1, Float: X_2, Float: Y_2, Float: Z_2) return floatadd(floatadd(floatsqroot(floatpower(floatsub(X_1, X_2), 2)),floatsqroot(floatpower(floatsub(Y_1, Y_2), 2))),floatsqroot(floatpower(floatsub(Z_1, Z_2), 2)));

stock GetDistancePlayerVeh(playerid, vehicleid) {

	new 
		Float: pos1, Float: pos2, Float: pos3, 
		Float: pos4, Float: pos5, Float: pos6, 
		Float: pos7;

	GetPlayerPos(playerid, pos1, pos2, pos3); GetVehiclePos(vehicleid, pos4, pos5, pos6);
	pos7 = floatsqroot((pos4 - pos1) * (pos4 - pos1) + (pos5 - pos2) * (pos5 - pos2) + (pos6 - pos3) * (pos6 - pos3));

	return floatround(pos7); }

stock GetClosestVehicle(playerid)
{
	new 
		Float: distance, 
		target = -1;

	foreach(new i : totalVehicles)
	{
		if(GetVehicleModel(i) >= 400 && i != INVALID_VEHICLE_ID && (target < 0 || distance > GetDistancePlayerVeh(playerid, i)))
		{
			target = i;
			distance = GetDistancePlayerVeh(playerid, i);
		}
	}

	return target;
}

stock GetClosestVehicle2(playerid) {
	new Float: Distance;
	if(!Distance) Distance = 200.0;
	new Float:X[2], Float:Y[2], Float:Z[2], Float:NearestPos = floatabs(Distance), NearestVehicle = INVALID_VEHICLE_ID;
	GetPlayerPos(playerid, X[0], Y[0], Z[0]);
	for(new i; i < MAX_VEHICLES; i++) {
		if(!IsVehicleStreamedIn(i, playerid) || IsPlayerInVehicle(playerid, i)) continue;
		GetVehiclePos(i, X[1], Y[1], Z[1]);
		if(NearestPos > GetDistanceBetweenPoints(X[0], Y[0], Z[0], X[1], Y[1], Z[1])) NearestPos = GetDistanceBetweenPoints(X[0], Y[0], Z[0], X[1], Y[1], Z[1]), NearestVehicle = i;
	}
	return NearestVehicle;}
stock returnCI(playerid)
{
    new
        szSerial[41];

    gpci(playerid, szSerial, sizeof szSerial);
    return szSerial;
}
stock loadingObjects(playerid)
{
	TogglePlayerControllableEx(playerid, false);
	GameTextForPlayer(playerid, "~w~loading objects..", 3000, 4);
	defer unfreezeTimer(playerid);

	return true;
}



stock TogglePlayerControllableEx(playerid, bool: toggle) return TogglePlayerControllable(playerid, toggle), playerFrozen[playerid] = !toggle;

stock PutPlayerInVehicleEx(playerid, vehicleid, seatid)
{
	gLastCar[playerid] = vehicleid;
	PutPlayerInVehicle(playerid, vehicleid, seatid);
	SetPVarInt(playerid, "AC_VEHTICK", gettime() + 5);

	if(seatid == 0)
	{
		for( new x = 0; x < 13; x ++ ) TextDrawShowForPlayer( playerid, Speedometer_TD[ x ] );
		for( new x = 0; x < 15; x ++ ) PlayerTextDrawShow( playerid, Speedometer_PTD[ playerid ][ x ] );
	}

	return true;
}


#define EX_SPLITLENGTHH 128

stock SendSplitMessage(playerid, color, const final[])
{
	new len = strlen(final),
		_iL = len / EX_SPLITLENGTHH,
		_Line[EX_SPLITLENGTHH+5],
		_:_i@Index;
	if((len % EX_SPLITLENGTHH)) _iL++;
	while(_i@Index < _iL) {
		if(_i@Index == 0) strmid(_Line, final, (_i@Index * EX_SPLITLENGTHH), (_i@Index * EX_SPLITLENGTHH) + EX_SPLITLENGTHH);
		else strmid(_Line, final, (_i@Index * EX_SPLITLENGTHH), (_i@Index * EX_SPLITLENGTHH) + EX_SPLITLENGTHH);

		if(_iL > 1) {
			if(_i@Index > 0) format(_Line, sizeof _Line, "... %s", _Line);
		}
		SendClientMessage(playerid, color, _Line);
		_i@Index++;
	}
	return true;
}

stock SendSplitMessageToAll(color, const final[])
{
	new len = strlen(final),
		_iL = len / EX_SPLITLENGTHH,
		_Line[EX_SPLITLENGTHH+5],
		_:_i@Index;
	if((len % EX_SPLITLENGTHH)) _iL++;
	while(_i@Index < _iL) {
		if(_i@Index == 0) strmid(_Line, final, (_i@Index * EX_SPLITLENGTHH), (_i@Index * EX_SPLITLENGTHH) + EX_SPLITLENGTHH);
		else strmid(_Line, final, (_i@Index * EX_SPLITLENGTHH), (_i@Index * EX_SPLITLENGTHH) + EX_SPLITLENGTHH);

		if(_iL > 1) {
			if(_i@Index > 0) format(_Line, sizeof _Line, "... %s", _Line);
		}
		SendClientMessageToAll(color, _Line);
		_i@Index++;
	}
	return true;
}
stock IsACBUGWeapon(playerid)
{
	if(playerOnline(playerid))
	{
		new 
			wID = GetPlayerWeapon(playerid);

		if (wID == 24 || wID == 25 || wID == 27 || wID == 34) return true;
	}
	return false;
}



stock SetPlayerHealthEx(playerid, Float:health)
{
	SetPlayerHealth(playerid, health);
	Health[playerid] = health;

	return true;
}

stock SetPlayerArmourEx(playerid, Float:armour)
{
	SetPlayerArmour(playerid, armour);
	Armour[playerid] = armour;

	return true;
}

stock GetPlayerHealthEx(playerid, &Float:health)
{
	health = Health[playerid];
	return true;
}

stock GetPlayerArmourEx(playerid, &Float:armour)
{
	armour = Armour[playerid];
	return true;
}

stock weapName(weaponid)
{
	new 
		weaponName[22];

	if(weaponid == 0) weaponName = "Fist";
	else GetWeaponName(weaponid, weaponName, sizeof weaponName);

	return weaponName;
}


stock GivePlayerWeaponEx(playerid, weapon, ammo)
{
	if(!playerVariables[playerid][pLicence][3] && !GetPVarInt(playerid, "Taking_Lesson") && weapon != 41) return true;
	// SetPVarInt(playerid, "AC_GUNTICK", gettime() + 4);
	// WeaponData[playerid][GetWeaponSlot(weapon)] = true;
	// WeaponAmmo[playerid][weapon] = ammo;
	// AC_WEAP[playerid] = weapon;
	return GivePlayerWeapon(playerid, weapon, ammo);
}

stock ResetPlayerWeaponsEx(playerid)
{
	SetPVarInt(playerid, "AC_GUNTICK", gettime() + 4);
	AC_WEAP[playerid] = -1;
	for(new x = 0; x < 13; x ++) WeaponData[playerid][x] = false;
	for(new x = 0; x < 47; x ++) WeaponAmmo[playerid][x] = 0;
	return ResetPlayerWeapons(playerid);
}

stock GetHudColor(colorid)
{
	switch(colorid)
	{
		case 1: return 0xC0C0C0FF;
		case 2: return 0xFF0000FF;
		case 3: return 0x00FF00FF;
		case 4: return 0x0000FFFF;
		case 5: return 0xFFFF00FF;
	}
	return true;
}
stock PlayAudioStreamForPlayersInCar(vehicleid, const url[])
{
	foreach(new i : Player) if(IsPlayerInAnyVehicle(i) && GetPlayerVehicleID(i) == vehicleid) PlayAudioStreamForPlayer(i, url);
	return true;
}
stock StopAudioStreamForPlayersInCar(vehicleid)
{
    foreach(new i : Player)
	{
        if(IsPlayerInAnyVehicle(i))
		{
            if(GetPlayerVehicleID(i) == vehicleid) StopAudioStreamForPlayer(i);
        }
    }
    return 1;
}


stock UnRent_Vehicle(playerid) {
	Rent_Available[GetPVarInt(playerid, "Rented_List")] ++;
	DestroyVehicleEx(rentVehicle[playerid]);
	rentVehicle[playerid] = 0, Rent_Veh_Time[playerid] = -1, DeletePVar(playerid, "Rented_List");
	return true;}
stock calculate_percentage(Float: enota, Float: celota) {
    new Float:total = enota/celota*100;
	return _:total;
}
stock strmatch(const String1[], const String2[])
{
	if ((strcmp(String1, String2, true, strlen(String2)) == 0) && (strlen(String2) == strlen(String1))) return true;
	else return false;
}

stock NumIp(const ip[], playerid)
{
	new 
		count = 0;

	foreach(new i : Player)
	{
		if(i == playerid) continue;

		new 
			playerip[16];

		GetPlayerIp(i, playerip, sizeof playerip);
		if(strmatch(ip, playerip)) count ++;
	}
	return count;
}
stock feedPlayer(playerid, Float:health)
{
	SetPlayerHealth(playerid, health);
	Health[playerid] = health;

	new 
		Float: newHealth;

	GetPlayerHealth(playerid, newHealth);

	if(newHealth > 100) SetPlayerHealth(playerid, 100);

	return true;
}