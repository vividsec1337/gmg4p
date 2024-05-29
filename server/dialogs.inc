#include <YSI_Coding\y_hooks>

timer playerLoginTimer[1000 * 60](playerid) return kickPlayer(playerid, "The time for logging in / for register (60 seconds) has elapsed. You got kicked!");

Dialog:DIALOG_LOGIN(playerid, response, listitem, inputtext[]) {

	if(!response) return kickPlayer(playerid, "You canceled your login and got kicked!");
	new parola[65];
	// SHA256_PassHash(inputtext, "gameforplaylucasefutau21", parola, sizeof parola);

	format(parola, sizeof parola, MD5_Hash(inputtext));
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "SELECT * FROM `players` WHERE `Name`='%e' AND `Password`='%s' LIMIT 1;", getNameEx(playerid), parola);
	mysql_tquery(SQL, gQuery, "onPlayerLogin", "i", playerid);

	return true;
}

Dialog:DIALOG_REGISTER(playerid, response, listitem, inputtext[])
{
	if(!response) return kickPlayer(playerid, "You canceled your registration and got kicked!");
	new parola[65];
	format(parola, sizeof parola, MD5_Hash(inputtext));
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "INSERT INTO `players` (`Name`, `Password`, `IP`) VALUES ('%e', '%e', '%s')", getNameEx(playerid), parola, getPlayerIp(playerid));
	mysql_tquery(SQL, gQuery, "onPlayerRegister", "i", playerid);

	return true;
}

Dialog:DIALOG_REGISTER_EMAIL(playerid, response, listitem, inputtext[])
{
	if(!response) return kickPlayer(playerid, "You don't completed your registration and got kicked!");
	if(playerVariables[playerid][pRegistred] == 1) return KickEx(playerid);
	if(strlen(inputtext) < 13 || strlen(inputtext) > 40) 
		return Dialog_Show(playerid, DIALOG_REGISTER_EMAIL, DIALOG_STYLE_INPUT, "Server: Register - Email", "Enter your email address below.\nYou will use this to reset/recover your password when you want!\n{d34747}Error: Invalid email.", "Next", "Close");
	if(!IsMail(inputtext)) 
		return Dialog_Show(playerid, DIALOG_REGISTER_EMAIL, DIALOG_STYLE_INPUT, "Server: Register - Email", "Enter your email address below.\nYou will use this to reset/recover your password when you want!\n{d34747}Error: Invalid email.", "Next", "Close");

	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `Email`='%s', `Registred`='1' WHERE `ID`=%d;", inputtext, getDatabaseID(playerid));
	mysql_tquery(SQL, gQuery, "", "");

	Dialog_Show(playerid, DIALOG_REGISTER_AGE, DIALOG_STYLE_INPUT, "Server: Register - Age", "Enter your age below!", "Next", "Close");
	playerVariables[playerid][pRegistred] = 1;

	return true;
}
Dialog:DIALOG_REGISTER_AGE(playerid, response, listitem, inputtext[]) {

	if(!response) return kickPlayer(playerid, "You don't completed your registration and got kicked!");
	if(playerVariables[playerid][pRegistred] == 2) return KickEx(playerid);
	if(strval(inputtext) < 7 || strval(inputtext) > 50) 
		return Dialog_Show(playerid, DIALOG_REGISTER_AGE, DIALOG_STYLE_INPUT, "Server: Register - Age", "Enter your age below!\n{d34747}Error: Invalid age (min 7 years, max 50).", "Next", "Close");
	if(!IsNumeric(inputtext)) 
		return Dialog_Show(playerid, DIALOG_REGISTER_AGE, DIALOG_STYLE_INPUT, "Server: Register - Age", "Enter your age below!\n{d34747}Error: Invalid age.", "Next", "Close");

	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `Age`=%d, `Registred`='2' WHERE `ID`=%d;", strval(inputtext), getDatabaseID(playerid));
	mysql_tquery(SQL, gQuery, "", "");

	Dialog_Show(playerid, DIALOG_REGISTER_GENDER, DIALOG_STYLE_MSGBOX, "Server: Register - Gender", "What gender do you want your character to be?", "Masculin", "Feminin");

	return true;
}
Dialog:DIALOG_REGISTER_GENDER(playerid, response, listitem, inputtext[]) {
	if(response) {
		playerVariables[playerid][pGender] = 1;
		gQuery[0] = EOS;
		mysql_format(SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `Gender`= 1 WHERE `ID`=%d;", getDatabaseID(playerid));
		mysql_tquery(SQL, gQuery, "", "");
		Dialog_Show(playerid, DIALOG_REGISTER_REFFERAL, DIALOG_STYLE_INPUT, "Server: Register - Referral", "{ffffff}If you were brought to the server by someone, enter their referral code below.\nIf you were not brought by anyone, press the Skip button.", "Next", "Skip");
	}
	else {
		playerVariables[playerid][pGender] = 2;
		gQuery[0] = EOS;
		mysql_format(SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `Gender`= 2 WHERE `ID`=%d;", getDatabaseID(playerid));
		mysql_tquery(SQL, gQuery, "", "");
		Dialog_Show(playerid, DIALOG_REGISTER_REFFERAL, DIALOG_STYLE_INPUT, "Server: Register - Referral", "{ffffff}If you were brought to the server by someone, enter their referral code below.\nIf you were not brought by anyone, press the Skip button.", "Next", "Skip");
		
	}
	return true;
}
Dialog:DIALOG_REGISTER_REFFERAL(playerid, response,	listitem, inputtext[]) {
	if(!response) {
		playerVariables[playerid][pRegistred] = 2;
		final_Register(playerid);
		return true;
	}
	if(!IsNumeric(inputtext))
		return Dialog_Show(playerid, DIALOG_REGISTER_REFFERAL, DIALOG_STYLE_INPUT, "Server: Register - Referral", "{ffffff}If you were brought to the server by someone, enter their referral code below.\nIf you were not brought by anyone, press the Skip button.", "Next", "Skip");

	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, 128, "SELECT * FROM `players` WHERE `ID`='%d' LIMIT 1", strval(inputtext));
	mysql_tquery(SQL, gQuery, "SQL_CheckPlayer", "ii", playerid, strval(inputtext));	
	return true;
}
function SQL_CheckPlayer(playerid, id) {
	if(!cache_num_rows()) 
		return Dialog_Show(playerid, DIALOG_REGISTER_REFFERAL, DIALOG_STYLE_INPUT, "Server: Register - Referral", "{ffffff}If you were brought to the server by someone, enter their referral code below.\nIf you were not brought by anyone, press the Skip button.", "Next", "Skip");
	
	new status=0; gString[0] = EOS;
	cache_get_value_name(0, "Name", gString, MAX_PLAYER_NAME);
	cache_get_value_name_int(0, "Status", status);
	SetPVarInt(playerid, "refferalID", id);
	SetPVarInt(playerid, "refferalStatus", status);

	format(RegisterReferral[playerid], MAX_PLAYER_NAME, gString);
	format(gString, 100, "Esti sigur ca %s te-a adus pe comunitate?", gString);
	Dialog_Show(playerid, DIA_REGISTER_REFFERAL, DIALOG_STYLE_MSGBOX, "Server: Register - Referral", gString, "Ok", "Back");
	return true;
}
Dialog:DIA_REGISTER_REFFERAL(playerid, response, listitem, inputtext[]) {
	if(!response) {
		playerVariables[playerid][pRegistred] = 2;
		final_Register(playerid);
		return true;
	}
	new i = GetPVarInt(playerid, "refferalStatus");
	va_SendClientMessage(playerid, COLOR_YELLOW, "Referral set to %s.", RegisterReferral[playerid]);
	playerVariables[playerid][pReferral] = GetPVarInt(playerid, "refferalID");
	gQuery[0] = EOS;
	mysql_format(SQL, gQuery, sizeof gQuery, "UPDATE `players` SET `Referral`= %d WHERE `ID`=%d;",GetPVarInt(playerid, "refferalID"), getDatabaseID(playerid));
	mysql_tquery(SQL, gQuery, "", "");
	playerVariables[playerid][pRegistred] = 2;
	final_Register(playerid);
	return true; 
}
Dialog:DIALOG_CHECKPOINT(playerid, response, listitem, inputtext[])
{
	if(!response) return true;

	if(!playerCheckpoint[playerid]) return true;
	if(targetFind[playerid] != INVALID_PLAYER_ID)
	{
		targetFind[playerid] = INVALID_PLAYER_ID;
		DeletePVar(playerid, "lastSkinFind");
		PlayerTextDrawHide(playerid, findTD[playerid][0]), PlayerTextDrawHide(playerid, findTD[playerid][1]);
	}

	DisablePlayerCheckpointEx(playerid);
	if(GetPVarInt(playerid, "jobWorking") > 0) stopJobWorking(playerid), SendClientMessage(playerid, -1, "Jobul a fost oprit deoarece ai anulat checkpointul!");
	if(GetPVarInt(playerid, "startedRob")) DeletePVar(playerid, "startedRob");

	return true;
}

stock loginCamera(playerid)
{
	InterpolateCameraPos(playerid, 1427.257568, -1398.900634, 138.420257, 597.961486, -1402.042968, 51.136325, 25000);
	InterpolateCameraLookAt(playerid, 1422.708740, -1398.914062, 136.344711, 593.011230, -1402.628784, 50.746410, 1000);
	// SetPlayerVirtualWorld(playerid, playerid + 1), SetPlayerInterior(playerid, 0);

	return true;
}
Dialog:DIALOG_TAXI_CP(playerid, response, listitem, inputtext[])
{
	if(!response) return resetTaxiRequest(playerid);
	if(GetPVarInt(playerid, "from_ID") == INVALID_PLAYER_ID) return resetTaxiRequest(playerid);

	setPlayerCheckpointEx(playerid, Set_CP[playerid][0], Set_CP[playerid][1], Set_CP[playerid][2], 7.0, CHECKPOINT_DEFAULT);
	SendClientMessage(playerid, COLOR_YELLOW, "You accepted your client request!");
	SendClientMessage(playerid, COLOR_YELLOW, "We created you a checkpoint on map. Follow him!");
	SendClientMessage(GetPVarInt(playerid, "from_ID"), COLOR_YELLOW, "Uber driver accepted your location. Have a nice trip!");
	resetTaxiRequest(playerid);

	return true;
}

Dialog:DIALOG_PREMIUM_CP(playerid, response, listitem, inputtext[])
{
	if(!response) return resetTaxiRequest(playerid);
	if(GetPVarInt(playerid, "from_ID") == INVALID_PLAYER_ID) return resetTaxiRequest(playerid);

	setPlayerCheckpointEx(playerid, Set_CP[playerid][0], Set_CP[playerid][1], Set_CP[playerid][2], 7.0, CHECKPOINT_DEFAULT);
	SendClientMessage(playerid, COLOR_YELLOW, "You accepted your passenger request!");
	SendClientMessage(playerid, COLOR_YELLOW, "We created you a checkpoint on map. Follow him!");
	SendClientMessage(GetPVarInt(playerid, "from_ID"), COLOR_YELLOW, "Car driver accepted your location. Have a nice trip!");
	resetTaxiRequest(playerid);

	return true;
}
Dialog:DIALOG_RENT_VEHICLE(playerid, response, listitem)
{
	if(!response || !IsPlayerInRangeOfPoint(playerid, 8.0, 1252.2181,-1426.6147,13.4948)) return true;
	if(GetPlayerCash(playerid) < getBizFee(15)) 
		return SendClientMessage(playerid, COLOR_GREY, "You don't have enough cash.");

	if(!Rent_Available[listitem]) 
		return SendClientMessage(playerid, COLOR_GREY, "This vehicle model is not available.");

	new 
		modelid = Rent_Model[listitem],
		Float: Angle;

	GetPlayerFacingAngle(playerid, Angle);
	rentVehicle[playerid] = CreateVehicleEx(modelid, playerVariables[playerid][playerPosX], playerVariables[playerid][playerPosY], playerVariables[playerid][playerPosZ], Angle, -1, -1, "RENT", -1, false, true);
	PutPlayerInVehicleEx(playerid, rentVehicle[playerid], 0);

	SendFormatMessage(playerid, COLOR_YELLOW, "You rented a %s for $%s.", getModelName(modelid), FormatNumber(getBizFee(15)));
	giveBizFee(playerid, 15);

	Rent_Available[listitem] --;
	Rent_Veh_Time[playerid] = -1;
	SetPVarInt(playerid, "Rented_List", listitem);

	return true;
}
