class CfgORBAT
{
	class b_5th_sfg
	{
		id = 5;
		idType = 0;
		type = "Recon";
		side = "West";
		size = "ArmyGroup";
		commander = "Brent Lindemen";
		commanderRank = "Colonel";
		text = "5th Special Forces Group";
		textShort = "5th SF Group";
		description = "The 5th SFG is primarily responsible for operations within the CENTCOM area of responsibility as part of the Special Operations Command, Central (SOCCENT). The 5th SFG specializes in operations in the Middle East, Persian Gulf, Central Asia, and the Horn of Africa (HOA).";

		// assets[] = {{B_Heli_Transport_03_F,5},{B_Heli_Light_01_F,3},{B_Heli_Light_01_armed_F,4},B_Heli_Transport_01_camo_F}; // Will display pictures of all available asseto the unit commander:
		// Can be an array with format {classname, [int active icons], [int greyed out icons]}, or simply a classname
		subordinates[] = {};	   // Subordinates, searched on the same level as this class.
		tags[] = {SF, US, BLUFOR}; // Group tags. When opening ORBAT viewer, user can define what tags will be accepted.
		insignia = __EVAL(getMissionPath "img\5th_SFG_insignia.paa"); // Unit insignia, displayed in ORBAT background and in tooltip
		// colorInsignia[] = {0,0,1,1}; // Insignia image color (white default), can be either RGBA array, or class from CfgMarkerColors
		// texture = "\ca\missions_f\data\orbat\customTexture_ca.paa"; // Custom texture, will replace icon set by 'type' param.
		// color[] = {0,0,1,1}; // Custom color, will replace color set by 'side' param. Can be either RGBA array, or class from CfgMarkerColors (e.g. color = "ColorWEST";)

		class 1stBat
		{
			id = 1;
			idType = 0;
			type = "Recon";
			side = "West";
			size = "Battalion";
			commander = "John Colton";
			commanderRank = "Major";
			text = "%1 %3";
			textShort = "%1 %3";
			description = "The 1st Battalion, 5th SFG specialises in: unconventional warfare, foreign internal defense, direct action, counter-insurgency, special reconnaissance, counter-terrorism, information operations, counterproliferation of weapon of mass destruction, and local security force assistance.";

			class hqCompany
			{
				id = 1;
				idType = 2;
				type = "HQ";
				side = "West";
				size = "Company";
				// commander = "Owen Greaves";
				// commanderRank = "Captain";
				text = "1st Bn HQ";
				textShort = "1st Bn HQ";
				description = "This is the battalion Headquarters and Headquarters Detachment (HHD).";
				assets[] = {};
			};

			class alphaCompany
			{
				id = 1;
				idType = 2;
				type = "Recon";
				side = "West";
				size = "Company";
				commander = "Owen Greaves";
				commanderRank = "Captain";
				text = "%1 %3";
				textShort = "%1 %3";
				description = "Alpha company is currently based in Kandahar with no elements in-theatre.";
				assets[] = {};
			};

			class bravoCompany
			{
				id = 2;
				idType = 2;
				type = "Recon";
				side = "West";
				size = "Company";
				commander = "James Harper";
				commanderRank = "Captain";
				text = "%1 %3";
				textShort = "%1 %3";
				description = "Bravo company is currently based in Kabul, with no elements in-theatre.";
				assets[] = {};
			};
			class charlieCompany
			{
				id = 3;
				idType = 2;
				type = "Recon";
				side = "West";
				size = "Company";
				text = "%1 %3";
				textShort = "%1 %3";
				description = "Charlie Company is the 1st Battalion's direct action specialists, consisting of three operational detachment alpha (ODA) teams and one command element.";
				assets[] = {{RHS_MELB_MH6M, 3}, UK3CB_B_M939_Refuel_DES, UK3CB_B_M939_Repair_DES, UK3CB_B_M939_Reammo_DES, {rhsusf_M1238A1_socom_d, 2}, {rhsusf_mrzr4_d, 3},rhsusf_m1165a1_gmv_mk19_m240_socom_d,rhsusf_m1165a1_gmv_m134d_m240_socom_d,rhsusf_m1165a1_gmv_m2_m240_socom_d};

				class SHEPHERD
				{
					id = 1;
					idType = 1;
					type = "HQ";
					side = "West";
					size = "Section";
					text = "SHEPHERD";
					textShort = "SHEPHERD";
					description = "Callsign SHEPHERD is the command element for Charlie Company along with the ranking officer for this operation.";
					assets[] = {UK3CB_B_M939_Refuel_DES, UK3CB_B_M939_Repair_DES, UK3CB_B_M939_Reammo_DES, {rhsusf_M1238A1_socom_d, 2}};
				};

				class HUSKY
				{
					id = 1;
					idType = 0;
					type = "Recon";
					side = "West";
					size = "Squad";
					text = "HUSKY";
					textShort = "HUSKY";
					description = "Callsign HUSKY is the 1st operational team with attached MH-6M Littlebird and pilot.";
					assets[] = {RHS_MELB_MH6M, rhsusf_m1165a1_gmv_m134d_m240_socom_d, rhsusf_mrzr4_d};
				};

				class PITBULL
				{
					id = 2;
					idType = 0;
					type = "Recon";
					side = "West";
					size = "Squad";
					// commander = "James Harper";
					// commanderRank = "Captain";
					text = "PITBULL";
					textShort = "PITBULL";
					description = "Callsign PITBULL is the 2nd operational team with attached MH-6M Littlebird and pilot.";
					assets[] = {RHS_MELB_MH6M, rhsusf_m1165a1_gmv_m2_m240_socom_d, rhsusf_mrzr4_d};
				};

				class COLLIE
				{
					id = 3;
					idType = 0;
					type = "Recon";
					side = "West";
					size = "Squad";
					// commander = "James Harper";
					// commanderRank = "Captain";
					text = "COLLIE";
					textShort = "COLLIE";
					description = "Callsign COLLIE is the 3rd operational team with attached MH-6M Littlebird and pilot.";
					assets[] = {RHS_MELB_MH6M, rhsusf_m1165a1_gmv_mk19_m240_socom_d, rhsusf_mrzr4_d};
				};
			};

			class supportCompany
			{
				id = 4;
				idType = 2;
				type = "Support";
				side = "West";
				size = "Company";
				// commander = "Owen Greaves";
				// commanderRank = "Captain";
				text = "%1 %3";
				textShort = "%1 %3";
				description = "Delta Company is the battalion's support company, and consists of artillery, airborne transport, CAS and other special assets.";
				assets[] = {{RHS_MELB_AH6M,2}};

				class BANG
				{
					id = 1;
					idType = 0;
					type = "Helicopter";
					side = "West";
					size = "Size1";
					// commander = "James Harper";
					// commanderRank = "Captain";
					text = "BANG";
					textShort = "BANG";
					description = "BANG is the callsign for one of Delta Company's AH-6M Littlebirds. It is outfitted with M134 miniguns and 2x M229 Hydra rocket pods.";
					assets[] = {RHS_MELB_AH6M};
				};

				class DAKKA
				{
					id = 2;
					idType = 0;
					type = "Helicopter";
					side = "West";
					size = "Size1";
					// commander = "James Harper";
					// commanderRank = "Captain";
					text = "DAKKA";
					textShort = "DAKKA";
					description = "DAKKA is the callsign for one of Delta Company's AH-6M Littlebirds. It is outfitted with twin GAU-19 .50 cal miniguns.";
					assets[] = {RHS_MELB_AH6M};
				};
			};

			
		};
	};
	
	class cia
	{
		// id = 1;
		// idType = 0;
		type = "Unknown";
		side = "Civilian";
		// size = "Division";
		// commander = "William Joseph Burns";
		// commanderRank = "Colonel";
		text = "Central Intelligence Agency";
		textShort = "CIA";
		description = "The CIA is officially tasked with gathering, processing, and analyzing national security information from around the world, primarily through the use of human intelligence and performing covert actions.";

		// assets[] = {{B_Heli_Transport_03_F,5},{B_Heli_Light_01_F,3},{B_Heli_Light_01_armed_F,4},B_Heli_Transport_01_camo_F}; // Will display pictures of all available asseto the unit commander:
		// Can be an array with format {classname, [int active icons], [int greyed out icons]}, or simply a classname
		subordinates[] = {};	   // Subordinates, searched on the same level as this class.
		tags[] = {CIA, US, BLUFOR}; // Group tags. When opening ORBAT viewer, user can define what tags will be accepted.
		insignia = __EVAL(getMissionPath "img\cia_insignia.paa"); // Unit insignia, displayed in ORBAT background and in tooltip
		// colorInsignia[] = {0,0,1,1}; // Insignia image color (white default), can be either RGBA array, or class from CfgMarkerColors
		// texture = "\ca\missions_f\data\orbat\customTexture_ca.paa"; // Custom texture, will replace icon set by 'type' param.
		// color[] = {0,0,1,1}; // Custom color, will replace color set by 'side' param. Can be either RGBA array, or class from CfgMarkerColors (e.g. color = "ColorWEST";)

		class SENIOR
		{
			// id = 1;
			// idType = 0;
			type = "Unknown";
			side = "Civilian";
			// size = "Size1";
			commander = "SENIOR";
			// commanderRank = "Major";
			text = "CIA Operative - SENIOR";
			textShort = "CIA - SENIOR";
			description = "SENIOR is the codename for our CIA contact in the region, and will be running the interrogation of Fahim al-Arshad.";
		};
	};
	
};