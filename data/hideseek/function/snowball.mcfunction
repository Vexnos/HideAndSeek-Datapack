execute as @e[type=snowball] at @s run ride @p[team=1,gamemode=adventure] mount @s
execute as @e[type=egg] at @s run ride @p[team=2,gamemode=adventure] mount @s
execute as @e[type=wind_charge] at @s run ride @p[team=1,gamemode=adventure] mount @s
execute as @e[type=fishing_bobber] at @s run ride @p[team=2,gamemode=adventure] mount @s
execute at @e[type=egg] run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 100 normal
execute at @e[type=wind_charge] run particle minecraft:white_smoke ~ ~ ~ 0.1 0.1 0.1 0 100 normal
execute at @e[type=minecraft:snowball] run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 100 normal
effect give @e[type=wind_charge] glowing infinite 0 true