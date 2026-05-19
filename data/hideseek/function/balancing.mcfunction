# kill @e[type=item]
# Stop Players Dropping Items
execute if score gameRunning settings matches 1 as @e[type=item] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute if score gameRunning settings matches 1 as @e[type=item] run data modify entity @s PickupDelay set value 0s
execute if score gameRunning settings matches 1 as @e[type=item] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s

# Kill chickens so they don't drop eggs
kill @e[type=item,nbt={Item:{id:"minecraft:egg"}}]

# Set XP to 0 so players can't break Anvils
xp set @a 0 levels
xp set @a 0 points