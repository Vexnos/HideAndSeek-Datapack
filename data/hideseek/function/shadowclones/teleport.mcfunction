execute at @e[type=mannequin,tag=tp_to_me,limit=1] run particle poof ~ ~1 ~ 0.1 0.1 0.1 0.3 100 force
execute at @e[type=mannequin,tag=tp_to_me,limit=1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 100 1

execute at @e[tag=tp_to_me,type=mannequin] run summon marker ~ ~ ~ {Tags:["mswap0"]}
execute at @a[tag=shadowclone_teleport,limit=1] run summon marker ~ ~ ~ {Tags:["mswap1"]}

kill @e[type=mannequin,tag=tp_to_me,limit=1]

execute at @e[tag=mswap0] run tp @a[tag=shadowclone_teleport,limit=1] ~ ~ ~ ~ ~
execute at @e[tag=mswap1] run summon armor_stand ~ ~ ~ {Tags:["dummy"],ShowArms:1b,equipment:{head:{id:"minecraft:leather_helmet"}}}

kill @e[type=marker,tag=mswap0]
kill @e[type=marker,tag=mswap1]

tag @e remove shadowclone_teleport