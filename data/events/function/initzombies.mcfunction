scoreboard players set #zombieTimer zombieTimer 10
title @a title {"text":"Zombies!","color":"green"}
execute at @a run playsound minecraft:entity.zombie.infect master @a
function events:zombies