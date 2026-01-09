# Redundant Function
advancement revoke @s only hideseek:powerups/grapple
execute at @s run playsound minecraft:block.chain.break master @a ~ ~ ~ 100 2
execute at @s run tp @a[team=1,sort=nearest,limit=1,distance=..10] @s