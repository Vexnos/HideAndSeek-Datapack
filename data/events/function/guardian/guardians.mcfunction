title @a title {"text":"Guardians!","color":"dark_aqua"}
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 100 0
scoreboard players set #guardianTimer guardianTimer 3
function events:guardian/summon