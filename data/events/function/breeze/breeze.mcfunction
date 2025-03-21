execute unless score nazgard Nazgard matches 1 run title @a title {"text":"Breezes!","color":"aqua"}
execute if score nazgard Nazgard matches 1 run title @a title {"text":"Blazes!","color":"gold"}
execute as @a at @s run playsound minecraft:entity.breeze.inhale master @s ~ ~ ~ 100 0
scoreboard players set #breezeTimer breezeTimer 3
function events:breeze/summon