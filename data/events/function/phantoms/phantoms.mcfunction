title @a title {"text":"Phantom Swarm!","color":"green"}
execute at @a run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 100 1
scoreboard players set #phantomTimer phantomTimer 4
function events:phantoms/summon