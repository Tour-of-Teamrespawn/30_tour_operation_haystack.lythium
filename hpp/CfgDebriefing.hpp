class CfgDebriefing
{
	class SUCCESS
	{
		title = "Mission Success";
		subtitle = "Power plant seized";
		description = "The power plant was successfully seized from the KDF!";
		pictureBackground = "";
		picture = "b_inf";
		pictureColor[] = {0.0, 0.3, 0.6, 1}; // blufor colours
	};
	class PARTIAL_SUCCESS
	{
		title = "Partial Success";
		subtitle = "Power plant seized, but with collateral damage";
		description = "The power plant was successfully seized from the KDF! However you have allowed destroyed some power transformers...";
		pictureBackground = "";
		picture = "b_inf";
		pictureColor[] = {0.0, 0.3, 0.6, 1}; // blufor colours
	};
	class FAIL
	{
		title = "Mission Aborted";
		subtitle = "";
		description = "You reported back in without completing all objectives.";
		pictureBackground = "";
		picture = "b_inf";
		pictureColor[] = {0.0, 0.3, 0.6, 1}; // blufor colours
	};
	class MEGA_FAIL
	{
		title = "Mission Failed";
		subtitle = "";
		description = "You failed to take the power plant, and damaged it in the attempt!";
		pictureBackground = "";
		picture = "b_inf";
		pictureColor[] = {0.0, 0.3, 0.6, 1}; // blufor colours
	};
	class KIA
	{
		title = "Mission Failure";
		subtitle = "KIA";
		description = "All teammates were killed in action.";
		pictureBackground = "";
		picture = "o_inf";
		pictureColor[] = {0.6, 0.1, 0.2, 1};
	};
};