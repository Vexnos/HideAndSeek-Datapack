# particle crit ~ ~ ~ 0 0 0 0 1

execute as @e[type=player,team=1,dx=0,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run effect give @s glowing 1 1 true
execute as @e[type=player,team=1,dx=0,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run damage @s 1 sweet_berry_bush

execute positioned ^ ^ ^1 if block ~ ~ ~ air run function hitboxes:ray