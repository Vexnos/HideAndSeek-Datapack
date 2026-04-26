# Title
title @a title [{type:"object",object:"atlas",atlas:"minecraft:particles",sprite:"minecraft:angry"},{"text":" Creepers! ","color":"dark_green"},{type:"object",object:"atlas",atlas:"minecraft:particles",sprite:"minecraft:angry"}]

# Sounds
execute as @a at @s run playsound minecraft:entity.creeper.primed master @s

# Warning Message
tellraw @a[team=1] {"text":"At your current hiding location, a creeper will explode in 10 seconds, evacuate!","color":"red"}

# Area Effect Cloud remembers the location of the player to spawn the creeper
execute at @a[team=1,tag=!out] run summon area_effect_cloud ~ ~ ~ {Tags:["creeper"],Duration:300}
schedule function hideseek:events/creeper 1t
