title @a title {"text":"Time Warp!","color":"dark_purple"}
execute at @a run playsound minecraft:block.bell.resonate master @a ~ ~ ~ 100 2
execute at @a run summon area_effect_cloud ~ ~ ~ {Tags:["timelord"],Duration:300}
execute as @e[tag=timelord] at @s run tag @a[sort=nearest,limit=1] add timewarp
schedule function hideseek:events/timelord/teleport 10s