loadout_rifleman =
{
	removeAllWeapons _this;
	
	//Will remove radio, compass, gps, map, and watch, as well as 
	removeAllItems _this;
	removeAllAssignedItems _this;
	
	removeUniform _this;
	removeVest _this;
	removeBackpack _this;

	sleep 1;

	//Convoluted, but necessary, as addUniform is not global.
	//"U_C_WorkerCoveralls" will only equip correctly in multiplayer on civilians. Watch out for this on other uniforms!
	[[{}, _this addUniform "U_C_WorkerCoveralls"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	_this addVest 'V_BandollierB_blk';
	_this addHeadgear 'H_MilCap_gry';

	_this linkItem 'ItemRadio';
	_this addItem 'FirstAidKit';

	_this addMagazine '30Rnd_65x39_caseless_mag';
	_this addMagazine '30Rnd_65x39_caseless_mag';
	_this addWeapon 'arifle_MXC_Black_F';

	_this addPrimaryWeaponItem 'acc_flashlight';
};