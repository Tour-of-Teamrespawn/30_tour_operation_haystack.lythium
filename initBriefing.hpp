waitUntil {!(isNull player)};
waitUntil {player == player};
  
player createDiaryRecord ["Diary", ["Signals","
SHEPHERD - Special Operations Command<br/>PRC343 Ch 1<br/><br/>
HUSKY - Special Operations Team 1 (with attached MH-6M)<br/>PRC343 Ch 2<br/><br/>
PITBULL - Special Operations Team 2 (with attached MH-6M)<br/>PRC343 Ch 3<br/><br/>
COLLIE - Special Operations Team 3 (with attached MH-6M)<br/>PRC343 Ch 4<br/><br/>
BANG - CAS 1 AH-6M<br/>PRC343 Ch 5<br/><br/>
DAKKA - CAS 2 AH-6M<br/>PRC343 Ch 6<br/><br/>

ALL TEAMS PRC152 Ch 1<br/><br/>

Recommended config:<br/>
PRC343 (Short range) = PTT 1 / Left ear <br/>
PRC152 (Long range) = PTT 2 / Right ear<br/><br/>
"]];  

player createDiaryRecord ["Diary", ["Logistics", "
You have the following helicopters at your disposal:<br/>
-3x MH-6M Little Bird transport helicopter (2x pilot seats + 7x cargo)<br/>
-1x AH-6M (M134 + Hydra)<br/>
-1x AH-6M (GAU-19)<br/><br/>

You have the following vehicles at your disposal:<br/>
-3x MRZR 4 cars (unarmed)<br/>
-2x M1238A1 MRAPs (unarmed)<br/>
-1x M1165A1 Humvee (Mk19 + M240)<br/>
-1x M1165A1 Humvee (M134 + M240)<br/>
-1x M1165A1 Humvee (M2 + M240)<br/>
-1x M939 refueling truck<br/>
-1x M939 repair truck<br/>
-1x M939 ammo truck<br/><br/>

CAS:<br/>
Assigned AH-6M only, no additional CAS at this time.<br/><br/>

Fire Support:<br/>
Not available at this time.<br/><br/>

Resupply:<br/>
-1x M939 ammo truck (with AH-6M ammo)<br/>
-Infantry weapons, ammunition and equipment at the <marker name='mkr_ammo'>ammo dump</marker>.<br/><br/>
"]]; 

player createDiaryRecord ["Diary", ["Execution", "
You are to brief your teams and head out from <marker name='mkr_fob'>FOB Fabiano</marker> by helicopter as soon as possible.<br/><br/>
All aerial assets will begin the search of the AO, specific as determined by special operations command team SHEPHERD.<br/><br/>
Ayman al-Arshad is to be secured and transported back to FOB Fabiano via helicopter.<br/>If Ayman is killed while attempting capture, search his person and any vehicles for intelligence that may be of use.<br/><br/>
"]];

player createDiaryRecord ["Diary", ["Mission", "
You will be flying out of the <marker name='mkr_fob'>FOB Fabiano</marker>.
Your mission is to find and capture the leader of the Al-Shabab, Ayman al-Arshad. He is to be brought in alive for questioning, so don't get too trigger happy!<br/><br/>
You must ensure no civilians are harmed during this operation, we need to show the locals that we are here to help.<br/><br/>
The mission can be aborted at your disgression by reporting into the <marker name='mkr_co'>CO</marker> back at the FOB.<br/><br/>
"]];

_vehicleColour = "red";
_vehicleType = "car";

player createDiaryRecord ["Diary", ["Situation", format ["
The insurgent group known as Al-Shabab have had increasing activity in the area recently, killing and kidnapping anyone thought to be helping us as well as planting IEDs and generally being a pain in our collective asses.<br/><br/>
A source from our friends in the CIA claims to have solid confirmation that Ayman al-Arshad, the current leader of Al-Shabab and a real nasty piece of work, is in the area north of Kinduf right now.<br/><br/>
Our source has said that heavily armed fighters from multiple cells have been travelling in from across the region for an important meeting.<br/>We expect a heavy insurgent prescence in the area with probable technical support and the potential for IEDs.<br/><br/>
Exact details on Ayman's location are light to say the leastm, all we have is that he was said to be in a %1 %2 heading to a local hideout.<br/><br/>
We need to move right now to have a hope of bringing this guy in safely, before he can go to ground or link up with and lead the other Al-Shabab cells into more mayhem.<br/><br/>", _vehicleColour, _vehicleType]]];   

player createDiarySubject ["Appendix", "Appendix"];
player createDiaryRecord ["Appendix", ["Appendix B - Al-Shabab","
Flag / pictures TBC<br/><br/>

Lore TBC<br/><br/>
"]];
player createDiaryRecord ["Appendix", ["Appendix A - Ayman al-Arshad","
Picture TBC<br/><br/>

Lore TBC<br/><br/>
"]];

// Non-mission lore related
// About / credits / feedback
player createDiarySubject ["About", "About"];
player createDiaryRecord ["About", ["Credits","
<br/>
Mission - Andy455<br/><br/>
Respawn control - Mr.Ben<br/><br/>
"]];

player createDiaryRecord ["About", ["Feedback","
<br/>
If you have any feedback on the mission please let me know on the Tour Discord editing channel.
"]];