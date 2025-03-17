scoreboard players set #zombieTimer zombieTimer 10
execute unless score pavlopetri Pavlopetri matches 1 run title @a title {"text":"Zombies!","color":"green"}
execute if score pavlopetri Pavlopetri matches 1 run title @a title {"text":"Drowned!","color":"green"}
execute at @a run playsound minecraft:entity.zombie.infect master @a
function events:zombies