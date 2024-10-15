effect give @a[team=2,scores={deaths=1..}] speed infinite 3 true
effect give @a[team=2,scores={deaths=1..}] dolphins_grace infinite 0 true
effect give @a[team=2,scores={deaths=1..}] fire_resistance infinite 0 true
tellraw @a {"text":"A Seeker has been killed!","color":"blue","bold":true}
execute at @a run playsound minecraft:entity.ender_dragon.growl ambient @a ~ ~ ~ 100 1
scoreboard players reset @s deaths