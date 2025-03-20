scoreboard players set #zombieTimer zombieTimer 10
execute unless score pavlopetri Pavlopetri matches 1 run title @a title {"text":"Zombies!","color":"green"}
execute if score pavlopetri Pavlopetri matches 1 run title @a title {"text":"Drowned!","color":"green"}
execute as @a at @s run playsound minecraft:entity.zombie.infect master @s
function events:zombies