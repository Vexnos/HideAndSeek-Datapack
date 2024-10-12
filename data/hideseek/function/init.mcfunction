team add 1 "Hider"
team modify 1 collisionRule never
team modify 1 color red
team modify 1 friendlyFire false
team modify 1 nametagVisibility hideForOtherTeams
team modify 1 prefix "[Hider] "
team add 2 "Seeker"
team modify 2 collisionRule never
team modify 2 color blue
team modify 2 friendlyFire false
team modify 2 nametagVisibility hideForOtherTeams
team modify 2 prefix "[Seeker] "
team add 3 "Be Nice"
team modify 3 collisionRule always
team modify 3 nametagVisibility always
team modify 3 friendlyFire false
gamerule mobGriefing false
scoreboard objectives add out dummy "out"
scoreboard objectives add hiding dummy "hiding"
scoreboard objectives add time dummy {"text":"Time","color":"yellow"}
scoreboard objectives add minutes dummy
# scoreboard objectives setdisplay sidebar time
scoreboard objectives add spectator killedByTeam.blue "spectator"
scoreboard objectives add deaths deathCount
scoreboard objectives add CrownPeak dummy
scoreboard objectives add Felora dummy
scoreboard objectives add Tartarus dummy
scoreboard objectives add Hyperia dummy
scoreboard objectives add Hailstone dummy
scoreboard objectives add Nazgard dummy
scoreboard objectives add Meridian dummy
scoreboard objectives add Kaelos dummy
scoreboard objectives add TwinPass dummy
scoreboard objectives add KawaiinIslands dummy
scoreboard objectives add DiamondHeights dummy
scoreboard objectives add Ataraxia dummy
scoreboard objectives add HOA dummy
scoreboard objectives add Tempus dummy
scoreboard objectives add End dummy
scoreboard objectives add Oakendale dummy
scoreboard objectives add Etherea dummy
scoreboard objectives add Incatasia dummy
scoreboard objectives add Amaria dummy
scoreboard objectives add seekerAmount dummy
title @a actionbar {"text":"The game is ready to go!","color":"green"}
playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ 100 1
scoreboard objectives add pingEnabled dummy
scoreboard objectives add glowingEnabled dummy
scoreboard objectives add mobsEnabled dummy