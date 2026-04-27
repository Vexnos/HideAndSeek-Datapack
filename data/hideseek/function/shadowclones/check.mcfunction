tag @s add shadowclone_teleport

give @s clock[custom_name={text:"TP to Shadow Clone",italic:false,color:"light_purple"},enchantment_glint_override=true,consumable={animation:crossbow,consume_seconds:5,sound:"minecraft:entity.enderman.teleport",has_consume_particles:false},use_cooldown={seconds:30,cooldown_group:"teleport_to_shadowclone"},max_stack_size=2] 1

execute unless entity @e[type=mannequin,tag=shadowclone_teleport] as @e[type=mannequin,tag=shadowclone] if score @s uuid0 = @a[tag=shadowclone_teleport,limit=1] uuid0 if score @s uuid1 = @a[tag=shadowclone_teleport,limit=1] uuid1 if score @s uuid2 = @a[tag=shadowclone_teleport,limit=1] uuid2 if score @s uuid3 = @a[tag=shadowclone_teleport,limit=1] uuid3 run tag @s add shadowclone_teleport

tag @e[type=mannequin,tag=shadowclone_teleport,sort=random,limit=1] add tp_to_me
tag @e[type=mannequin,tag=shadowclone_teleport] remove shadowclone_teleport

advancement revoke @s only hideseek:powerups/clock

execute as @e[type=mannequin,tag=tp_to_me,limit=1] run return run function hideseek:shadowclones/teleport

title @s actionbar {text:"You have no clones to teleport to!",color:"red"}
execute as @s at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0

tag @e remove shadowclone_teleport