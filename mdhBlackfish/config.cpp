class CfgPatches 
{
	class mdhBlackfish
	{
		author = "Moerderhoschi";
		name = "mdhBlackfish";
		url = "https://steamcommunity.com/sharedfiles/filedetails/?id=3407540432";
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
		version = "1.20160815";
		versionStr = "1.20160815";
		versionAr[] = {1,20160816};
		authors[] = {};
	};
};

class CfgFunctions
{
	class mdh
	{
		class mdhFunctions
		{
			class mdhBlackfish
			{
				file = "mdhBlackfish\init.sqf";
				postInit = 1;
			};
		};
	};
};

class CfgMods
{
	class mdhBlackfish
	{
		dir = "@mdhBlackfish";
		name = "mdhBlackfish";
		picture = "mdhBlackfish\mdhBlackfish.paa";
		hidePicture = "true";
		hideName = "true";
		actionName = "Website";
		action = "https://steamcommunity.com/sharedfiles/filedetails/?id=3407540432";
	};
};
