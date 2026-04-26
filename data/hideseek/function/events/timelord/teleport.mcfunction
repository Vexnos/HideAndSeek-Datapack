tellraw @a[tag=!out] {text:"You have been warped back 20 seconds!",color:"light_purple"}
execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:block.trial_spawner.about_to_spawn_item master @s ~ ~ ~ 100 2
execute as @a at @s run playsound minecraft:block.trial_spawner.spawn_mob master @s ~ ~ ~ 100 0
execute as @e[tag=timelord] run execute as @a[tag=!out] if score @s uuid0 = @s uuid0 if score @s uuid1 = @s uuid1 if score @s uuid2 = @s uuid2 if score @s uuid3 = @s uuid3 run tp @s @s
execute at @e[tag=timelord] run particle minecraft:entity_effect{color:[0.6f,0.4f,0.8f,0.75f]} ~ ~ ~ 0.5 0.8 0.5 3 100 force

tp @a[tag=tp1] @e[tag=tp1,limit=1]
tp @a[tag=tp2] @e[tag=tp2,limit=1]
tp @a[tag=tp3] @e[tag=tp3,limit=1]
tp @a[tag=tp4] @e[tag=tp4,limit=1]
tp @a[tag=tp5] @e[tag=tp5,limit=1]
tp @a[tag=tp6] @e[tag=tp6,limit=1]
tp @a[tag=tp7] @e[tag=tp7,limit=1]
tp @a[tag=tp8] @e[tag=tp8,limit=1]

tag @a remove tp1
tag @a remove tp2
tag @a remove tp3
tag @a remove tp4
tag @a remove tp5
tag @a remove tp6
tag @a remove tp7
tag @a remove tp8

# Kill Markers
kill @e[type=marker,tag=timelord]