#
# Description: Radars for Seekers
# Called by: hideseek:powerups/radar
# Entity @s: Player
#
# Check Distance
execute as @s at @a[team=1,distance=101..,limit=1,sort=nearest,gamemode=adventure] run title @s actionbar {"text":"☠ Absolute Zero ☠","color":"dark_aqua"}
execute as @s at @a[team=1,distance=81..100,limit=1,sort=nearest,gamemode=adventure] run title @s actionbar {"text":"❄ Freezing ❄","color":"aqua"}
execute as @s at @a[team=1,distance=51..80,limit=1,sort=nearest,gamemode=adventure] run title @s actionbar {"text":"💧 Cold 💧","color":"blue"}
execute as @s at @a[team=1,distance=31..50,limit=1,sort=nearest,gamemode=adventure] run title @s actionbar {"text":"🌴 Temperate 🌴","color":"yellow"}
execute as @s at @a[team=1,distance=11..30,limit=1,sort=nearest,gamemode=adventure] run title @s actionbar {"text":"🌵 Warm 🌵","color":"gold"}
execute as @s at @a[team=1,distance=1..10,limit=1,sort=nearest,gamemode=adventure] run title @s actionbar {"text":"🔥 Hot!!! 🔥","color":"red"}
execute as @s at @a[team=1,distance=1..10,limit=1,sort=nearest,gamemode=adventure] anchored eyes run particle flame ^ ^ ^1 0.3 1 0.3 0 10