title @a title {"text":"Warden Flurry!","color":"aqua"}
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 100 0
scoreboard players set #wardenTimer wardenTimer 20
function events:wardenflurry/summon