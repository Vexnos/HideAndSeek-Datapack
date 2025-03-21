title @a title {"text":"Phantom Swarm!","color":"green"}
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s
scoreboard players set #phantomTimer phantomTimer 4
function events:phantoms/summon