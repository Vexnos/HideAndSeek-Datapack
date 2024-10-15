advancement revoke @s only hideseek:right_click
execute at @s run playsound minecraft:item.trident.return ambient @a ~ ~ ~ 100 1
execute at @s run playsound minecraft:entity.allay.ambient_without_item ambient @a ~ ~ ~ 1 2
execute at @s run particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 2 200 force
execute at @s run kill @e[type=trident,sort=nearest]