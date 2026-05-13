# Summon Withers at the start Armor Stand unless in Tartarus
execute unless score tartarus map matches 1 at @e[tag=start,limit=1] run summon wither ~ ~ ~ {PersistenceRequired:1b,CustomName:{"text":"Guardian","color":"green"},Team:"4",Glowing:1b,attributes:[{id:"minecraft:scale",modifiers:[{amount:2,id:"scale",operation:add_value}]}]}

# Summon Withers at a set location in Tartarus
execute if score tartarus map matches 1 positioned -55 23 2524 run summon wither ~ ~ ~ {PersistenceRequired:1b,CustomName:{"text":"Guardian","color":"green"},Team:"4",Glowing:1b,attributes:[{id:"minecraft:scale",modifiers:[{amount:2,id:"scale",operation:add_value}]}]}

# Summon 3 Withers in Dark Peak
execute if score darkPeak map matches 1 at @e[tag=start,limit=1] run summon wither ~ ~ ~ {PersistenceRequired:1b,CustomName:{"text":"Guardian","color":"green"},Team:"4",Glowing:1b,attributes:[{id:"minecraft:scale",modifiers:[{amount:2,id:"scale",operation:add_value}]}]}
execute if score darkPeak map matches 1 at @e[tag=start,limit=1] run summon wither ~ ~ ~ {PersistenceRequired:1b,CustomName:{"text":"Guardian","color":"green"},Team:"4",Glowing:1b,attributes:[{id:"minecraft:scale",modifiers:[{amount:2,id:"scale",operation:add_value}]}]}
execute if score darkPeak map matches 1 at @e[tag=start,limit=1] run summon wither ~ ~ ~ {PersistenceRequired:1b,CustomName:{"text":"Guardian","color":"green"},Team:"4",Glowing:1b,attributes:[{id:"minecraft:scale",modifiers:[{amount:2,id:"scale",operation:add_value}]}]}

# Sounds
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s

# Title
title @a title [{type:"object",object:"atlas",atlas:"minecraft:blocks",sprite:"block/wither_rose"},{"text":" Wither! ","color":"dark_red","bold":true},{type:"object",object:"atlas",atlas:"minecraft:blocks",sprite:"block/wither_rose"}]