# particle crit ~ ~ ~ 0 0 0 0 1

scoreboard players set @a range 100

scoreboard players remove @s range 1

execute as @e[type=player,team=1,dx=0,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function hideseek:hitboxes/hit

execute if score @s range matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ air run function hideseek:hitboxes/ray