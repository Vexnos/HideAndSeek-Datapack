# Sounds
execute at @s run playsound minecraft:item.trident.return ambient @a ~ ~ ~ 100 1
execute at @s run playsound minecraft:entity.allay.ambient_without_item ambient @a ~ ~ ~ 1 2
execute at @s run particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 2 200 force

# Kill the closest trident (usually the one the seeker is riding)
execute at @s run kill @e[type=trident,sort=nearest,distance=..2,limit=1]