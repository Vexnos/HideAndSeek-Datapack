title @a title {"text":"Breezes!","color":"aqua"}
execute at @a run playsound minecraft:entity.breeze.inhale master @a ~ ~ ~ 100 0
scoreboard players set #breezeTimer breezeTimer 3
function events:breeze/summon