waitUntil{time > 1};
[] call compile preprocessFile "loadouts.sqf";

switch(typeOf player) do
{
//	Examples below:
//	case "B_Soldier_SL_F": {player call loadout_leader};
//	case "B_Soldier_TL_F": {player call loadout_leader};
//	case "B_soldier_LAT_F": {player call loadout_at};
//	case "B_soldier_AR_F": {player call loadout_autorifleman};
//	case "B_soldier_M_F": {player call loadout_marksman};
//	case "B_Soldier_GL_F": {player call loadout_grenadier};
//	case "B_medic_F": {player call loadout_medic};
//	case "B_soldier_repair_F": {player call loadout_engineer};

	default {player call loadout_rifleman};
}