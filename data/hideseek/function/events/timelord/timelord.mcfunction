title @a title [{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/clock_00"},{"text":" Time Warp! ","color":"dark_purple"},{type:"object",object:"atlas",atlas:"minecraft:items",sprite:"item/clock_00"}]
execute as @a at @s run playsound minecraft:block.vault.insert_item_fail master @s ~ ~ ~ 100 0
execute as @a at @s run playsound minecraft:block.trial_spawner.about_to_spawn_item master @s ~ ~ ~ 100 0
execute as @a[tag=!out] at @s run summon marker ~ ~ ~ {Tags:["timelord"]}
execute as @e[tag=timelord] at @s run function hideseek:events/timelord/tags
schedule function hideseek:events/timelord/teleport 20s