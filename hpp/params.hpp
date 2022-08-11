class Params
{
	class TOUR_param_Respawn
	{
		// paramsArray[0]
		title = "Respawn Time (s):";
		values[] = {0, 30, 60, 300, 600, 900};
		default = 30;
		texts[] = {"None", "30 Seconds", "1 Minute", "5 Minutes", "10 Minutes", "15 Minutes"};
	};

	class TOUR_param_tickets
	{
		// paramsArray[1]
		title = "Lives:";
		values[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 20, 30, 40, 50, 100};
		default = 1;
		texts[] = {"1", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "20", "30", "40", "50", "100"};
	};

	class TOUR_param_viewDistance
	{
		// paramsArray[2]
		title = "View Distance:";
		values[] = {1000, 2000, 3000, 4000, 5000, 7500, 10000};
		default = 3000;
		texts[] = {"1000m", "2000m", "3000m", "4000m", "5000m", "7500m", "10000m"};
	};

	class TOUR_param_TOD
	{
		// paramsArray[3]
		title = "Time Of Day:";
		values[] = {0, 1, 2, 3, 4};
		default = 3;
		texts[] = {"Sunrise", "Noon", "Sunset", "Night", "Random"};
	};

	class A455_param_Moon
	{
		// paramsArray[4]
		title = "Moon phase:";
		values[] = {1, 8, 16};
		default = 1;
		texts[] = {"Full moon (light)", "Half moon", "New moon (dark)"};
	};

	class A455_param_Fog
	{
		// paramsArray[5]
		title = "Fog:";
		values[] = {0, 1, 2, 3, 4};
		default = 0;
		texts[] = {"Clear", "Low", "Medium", "High", "Maximum"};
	};

	class A455_param_Overcast
	{
		// paramsArray[6]
		title = "Overcast:";
		values[] = {0, 1, 2, 3, 4};
		default = 0;
		texts[] = {"Clear", "Low", "Medium", "High", "Maximum"};
	};

	class A455_param_AO_size
	{
		// paramsArray[7]
		title = "AO Size:";
		values[] = {5000, 7500, 10000};
		default = 7500;
		texts[] = {"5000m (easy)", "7500m (normal)", "10000m (hard)"};
	};

	class A455_param_DebugMode
	{
		// paramsArray[8]
		title = "Debug mode:";
		values[] = {0, 1};
		default = 0;
		texts[] = {"Disabled", "Enabled"};
	};
};