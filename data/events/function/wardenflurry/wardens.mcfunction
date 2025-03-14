title @a title {"text":"Warden Flurry!","color":"aqua"}
execute at @a run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 100 0
scoreboard players set #wardenTimer wardenTimer 20
function events:wardenflurry/summon