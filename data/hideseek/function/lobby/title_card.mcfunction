#
# Description: Title Card in the Lobby
# Called by: hideseek:lobby/clear
# Entity @s: Player
#
tag @s add title_card
title @s subtitle {text:"The Bastion of Many Shenanigans",color:"dark_aqua"}
title @s title {text:"Arena of Chaos",color:"aqua"}
execute at @s run playsound minecraft:block.trial_spawner.ominous_activate master @s ~ ~ ~ 100 0
execute at @s run playsound minecraft:block.trial_spawner.detect_player master @s ~ ~ ~ 100 0
execute at @s run playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 100 0