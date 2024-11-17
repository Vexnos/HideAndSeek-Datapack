execute at @a at @s at @a[team=1,distance=150..,limit=1,sort=nearest,gamemode=adventure] run scoreboard players set @s radar 1
execute at @a at @s at @a[team=1,distance=120..149,limit=1,sort=nearest,gamemode=adventure] run scoreboard players set @s radar 2
execute at @a at @s at @a[team=1,distance=70..119,limit=1,sort=nearest,gamemode=adventure] run scoreboard players set @s radar 3
execute at @a at @s at @a[team=1,distance=21..69,limit=1,sort=nearest,gamemode=adventure] run scoreboard players set @s radar 4
execute at @a at @s at @a[team=1,distance=1..20,limit=1,sort=nearest,gamemode=adventure] run scoreboard players set @s radar 5
execute as @s[scores={radar=1}] run title @s actionbar {"text":"❄ Freezing ❄","color":"aqua"}
execute as @s[scores={radar=2}] run title @s actionbar {"text":"💧 Cold 💧","color":"blue"}
execute as @s[scores={radar=3}] run title @s actionbar {"text":"🌴 Temperate 🌴","color":"yellow"}
execute as @s[scores={radar=4}] run title @s actionbar {"text":"🌵 Warm 🌵","color":"gold"}
execute as @s[scores={radar=5}] run title @s actionbar {"text":"🔥 Hot!!! 🔥","color":"red"}
execute at @s[scores={radar=5}] anchored eyes run particle flame ^ ^ ^1 0.3 1 0.3 0 3