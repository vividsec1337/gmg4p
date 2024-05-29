#include <a_mysql>

#include <crashdetect>
#include <streamer>
#include <Pawn.CMD>
#include <easyDialog>
#include <fly>
#include <md5>

#include <sscanf2>
#include <timestamptodate>
#include <mSelection>
#undef MAX_PLAYERS
#define MAX_PLAYERS 101
// #include <colandreas>
#define YSI_NO_HEAP_MALLOC
#define CGEN_MEMORY 20000

#include <YSI_Data\y_iterate>
#include <YSI_Coding\y_timers>
#include <YSI_Coding\y_hooks>
#include <YSI_Coding\y_inline>
#include <YSI_Extra\y_inline_mysql>
#include <YSI_Coding\y_stringhash>

#include <map>
#include <vector>
//#define RUN_PROFILINGS
#if defined RUN_PROFILINGS
#include <YSI_Core\y_profiling>
#endif
#include <progress2>
#include <map-zones>
#include <a_afk>
#include <sampcac>
#include <bigint>

#define LOCAL_HOST // BETA_HOST	
#define LOGO_TEXT	"rpg.gameforplay.ro"
#define WEB_URL "gameforplay.ro"
#define ANTI_CHEAT	
#define SHAMPANGE
// #define VDAY

//#define ROB_SPECIAL
#if defined ANTI_CHEAT
	#include "nex-ac"
#endif

DEFINE_HOOK_REPLACEMENT(OnPlayer, OP_);
#define MAX_SKINS						350 // SA:MP limit + 39
#define MAX_SKINS_OWNED					100

#define MAX_CHEATS ( 53 )
new AC_VAR[ MAX_CHEATS ];


// #pragma dynamic 65536
#pragma warning disable 203 //neon save, fireworks save
#define MAX_SLOTS          		( 10 )
#define GetPlayerMysqlID playerVariables[ %0 ][ pSQL ]
//======== GENERAL DEFINES ========//
#define function%0(%1) forward %0(%1); public %0(%1)
function Kick_Ban(playerid, bool: kickban) return (!kickban) ? Kick(playerid) : Ban(playerid);
#define KickEx(%1) SetTimerEx("Kick_Ban", 500, false, "ii", %1, false)
#define getName(%0) playerVariables[%0][pUserName]
#define getDatabaseID(%0) playerVariables[%0][pSQL]
#define GetPlayerCash(%0) playerVariables[%0][pCash]
#define getModelName(%0) aVehicleNames[%0 - 400]
#define HOLDING(%0) \
    ((newkeys & (%0)) == (%0))
#define PRESSING(%0,%1) \
	(%0 & (%1))
#define RELEASED(%0) \
	(((newkeys & (%0)) != (%0)) && ((oldkeys & (%0)) == (%0)))
#define randomEx(%0,%1) \
	(random(%1-(%0))+%0)
#define playerIsNotAdmin(%0) SendClientMessage(%0, COLOR_GREY, "Error: You are not an admin!")
#define SCMF va_SendClientMessage
#define strsame(%0,%1,%2) 			(!strcmp(%0, %1, %2))
#if !defined gpci
    native gpci(playerid, serial[], len);
#endif
//=================================//

//======== GENERAL COLORS ========//
#define COLOR_SERVER		0xC2A2DAff
#define COLOR_GENERAL		0xC2A2DAff
#define COLOR_CLIENT		0xA9C4E4FF
#define COLOR_RED			0xba2424ff
#define COLOR_GREY			0xAFAFAFAA
#define COLOR_DARK_YELLOW	0xFFC266AA
#define COLOR_CYAN			0x5EB1B1FF
#define COLOR_YELLOW		0xFFFF00FF
#define COLOR_GREEN			0x3ab538ff
#define COLOR_DARKPINK		0xFFADADFF
#define COLOR_ADM_CHAT		0xFFC266AA
#define COLOR_STAFF_CHAT	0xb3741dff
#define COLOR_ADM_CMD		0xE3D38AFF
#define COLOR_PURPLE		0xC2A2DAAA
#define COLOR_ORANGE		0xF97804FF
#define COLOR_LIGHTBLUE		0x33CCFFAA
#define COLOR_LIGHTRED		0xFF6347FF
#define COLOR_ADM_ORN		0xFFC000FF
#define COLOR_TEAL			0x67AAB1FF
#define COLOR_WARNING		0xDE1414FF
#define COLOR_BLUE			0x211CDEC8
#define COLOR_GREEN3		0x6DB067AA
#define COLOR_DBLUE			0x2641FEAA
#define COLOR_FCT_ACTION 	0x9786e3ff
#define COLOR_BROWN 				0x8E6F53FF
#define COLOR_ADMIN2				0xD6D669FF
//================================//

//======== SERVER DEFINES ========//
#define MAX_LOGIN_ATTEMS 3
#define MAX_REGION_SKINS 4
#define INDEX_UTILITIES 1
#define MAX_STRING_SIZE 100
#define SEAT_TYPE_DRIVER 0

#define MAX_MOTO 11
#define MAX_BIKES 3
#define MAX_BOATS 10
#define MAX_PLANES 23
#define MAX_VIP_MODELS 9
#define MAX_RENT_MODELS 5

#define MAX_TIMERS 4

#define MAX_PANEL_ACTIONS				10 // Number of actions that can be processed at every 10 seconds
//================================//

#define MAX_HITMAN_CONTRACTS 70
    #define MAX_GARAGE 100