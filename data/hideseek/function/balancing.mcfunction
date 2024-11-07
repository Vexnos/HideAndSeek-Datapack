# kill @e[type=item]
# Stop Players Dropping Items
execute if score #game gameRunning matches 1 as @e[type=item] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute if score #game gameRunning matches 1 as @e[type=item] run data modify entity @s PickupDelay set value 0s
execute if score #game gameRunning matches 1 as @e[type=item] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s

kill @e[type=chicken]
xp set @a 0 levels
xp set @a 0 points