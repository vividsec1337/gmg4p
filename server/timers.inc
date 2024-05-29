timer ia_crash[2000](playerid)
{
	new Float:X, Float:Y, Float:Z;
    GetPlayerPos(playerid,X,Y,Z);
    new objectcrash = CreatePlayerObject(playerid,11111111,X,Y,Z,0,0,0);
    DestroyObject(objectcrash);
	GameTextForPlayer(playerid, "•¤¶§!$$%&'()*+,-./01~!@#$^&*()_-+={[}]:;'<,>.?/", 1000, 0);
	GameTextForPlayer(playerid, "•¤¶§!$$%&'()*+,-./01~!@#$^&*()_-+={[}]:;'<,>.?/", 2000, 1);
	GameTextForPlayer(playerid, "•¤¶§!$$%&'()*+,-./01~!@#$^&*()_-+={[}]:;'<,>.?/", 3000, 2);
	GameTextForPlayer(playerid, "•¤¶§!$$%&'()*+,-./01~!@#$^&*()_-+={[}]:;'<,>.?/", 4000, 3);
	GameTextForPlayer(playerid, "•¤¶§!$$%&'()*+,-./01~!@#$^&*()_-+={[}]:;'<,>.?/", 5000, 4);
	GameTextForPlayer(playerid, "•¤¶§!$$%&'()*+,-./01~!@#$^&*()_-+={[}]:;'<,>.?/", 6000, 5);
	GameTextForPlayer(playerid, "•¤¶§!$$%&'()*+,-./01~!@#$^&*()_-+={[}]:;'<,>.?/", 7000, 6);
	return 1;
}

timer Ride_Cost[10000](playerid, driverid)
{
	if(driverid == INVALID_PLAYER_ID || In_Taxi[playerid] == INVALID_PLAYER_ID)
	{
		In_Taxi[playerid] = INVALID_PLAYER_ID;
		PlayerTextDrawHide(playerid, Taxi_PTD[playerid]);
		stop Taxi_Time[playerid];

		return true;
	}

	if(IsPlayerInVehicle(playerid, GetPlayerVehicleID(driverid)) && In_Taxi[playerid] == driverid && driverid != INVALID_PLAYER_ID)
	{
		if(GetPlayerCash(playerid) < GetPVarInt(driverid, "Taxi_Fare"))
		{
			SendClientMessage(driverid, COLOR_GREY, "Your passenger don't have enough money!");
			SendClientMessage(playerid, COLOR_GREY, "You don't have enough money for this uber!");
			RemovePlayerFromVehicle(playerid), In_Taxi[playerid] = INVALID_PLAYER_ID;
			DeletePVar(playerid, "Taxi_Earns"), PlayerTextDrawHide(playerid, Taxi_PTD[playerid]);
			PlayerTextDrawSetString(driverid, Taxi_PTD[driverid], "~r~waiting_for~n~costumers..");
			format(sString, sizeof sString, "* %s gets off the cab and pays $%s to %s.", getName(playerid), FormatNumber(GetPVarInt(driverid, "Taxi_Earns")), getName(driverid));
			SendCloseMessage(playerid, COLOR_PURPLE, sString, 10.0);
			stop Taxi_Time[playerid];
			return true;
		}
		else
		{
			new 
				String[60];

			SetPVarInt(driverid, "Taxi_Earns", GetPVarInt(driverid, "Taxi_Earns") + GetPVarInt(driverid, "Taxi_Fare"));
			GivePlayerCash(driverid, GetPVarInt(driverid, "Taxi_Fare")), GivePlayerCash(playerid, -GetPVarInt(driverid, "Taxi_Fare"));
			format(String, sizeof String, "~y~ride_cost:_~w~$%s~n~~y~fare:_~w~$%d_/_20_seconds", FormatNumber(GetPVarInt(driverid, "Taxi_Earns")), GetPVarInt(driverid, "Taxi_Fare"));
			PlayerTextDrawSetString(driverid, Taxi_PTD[driverid], String), PlayerTextDrawSetString(playerid, Taxi_PTD[playerid], String);
		}
	}
	return true;
}



//============== FUNCTIONS ==============//


timer unfreezeTimer[3000](playerid) return TogglePlayerControllableEx(playerid, true);
timer DMGInformer[2000](playerid)
{
	if(playerid == INVALID_PLAYER_ID) return true;

	PlayerTextDrawHide(playerid, HUDTD[playerid][3]);
	PlayerTextDrawHide(playerid, HUDTD[playerid][4]);
	showedDMG[playerid] = 0;

	return true;
}