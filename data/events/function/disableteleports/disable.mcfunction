scoreboard players set #mountsEnabled mountsEnabled 0
title @a title {"text":"Teleports Disabled!","color":"dark_purple"}
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse master @s
execute as @a at @s run playsound minecraft:block.glass.break master @s
schedule function events:disableteleports/enable 20s