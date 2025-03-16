effect give @a[team=2] speed infinite 3 true
effect give @a[team=2] dolphins_grace infinite 0 true
execute if score pavlopetri Pavlopetri matches 1 run effect give @a[team=2] water_breathing infinite 0 true
effect give @a[team=2] fire_resistance infinite 0 true
# tellraw @a {"text":"A Seeker has been killed!","color":"blue","bold":true}
# execute at @a run playsound minecraft:entity.ender_dragon.growl ambient @a ~ ~ ~ 100 1
# scoreboard players reset @s deaths