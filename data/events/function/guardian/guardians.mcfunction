title @a title {"text":"Guardians!","color":"dark_aqua"}
execute at @a run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 100 0
scoreboard players set #guardianTimer guardianTimer 3
function events:guardian/summon