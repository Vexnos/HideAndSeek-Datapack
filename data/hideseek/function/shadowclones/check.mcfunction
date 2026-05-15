# Add a tag to the player teleporting
tag @s add shadowclone_teleport

# Give the player another clock to replace the used one
give @s clock[custom_name={text:"TP to Shadow Clone",italic:false,color:"light_purple"},enchantment_glint_override=true,consumable={animation:trident,consume_seconds:3,sound:"minecraft:entity.enderman.teleport",has_consume_particles:false},use_cooldown={seconds:30,cooldown_group:"teleport_to_shadowclone"},max_stack_size=2] 1

# Check which shadowclones match the player's UUID
execute unless entity @e[type=mannequin,tag=shadowclone_teleport] as @e[type=mannequin,tag=shadowclone] if score @s uuid0 = @a[tag=shadowclone_teleport,limit=1] uuid0 if score @s uuid1 = @a[tag=shadowclone_teleport,limit=1] uuid1 if score @s uuid2 = @a[tag=shadowclone_teleport,limit=1] uuid2 if score @s uuid3 = @a[tag=shadowclone_teleport,limit=1] uuid3 run tag @s add shadowclone_teleport

# Pick one of the three shadowclones and randomly select it for teleport
tag @e[type=mannequin,tag=shadowclone_teleport,sort=random,limit=1] add tp_to_me
tag @e[type=mannequin,tag=shadowclone_teleport] remove shadowclone_teleport

# Revoke the powerup so advancement can be used again
advancement revoke @s only hideseek:powerups/clock

# Teleport the player if there's a valid shadowclone
execute as @e[type=mannequin,tag=tp_to_me,limit=1] run return run function hideseek:shadowclones/teleport

# If no valid shadowclone is found
title @s actionbar {text:"You have no clones to teleport to!",color:"red"}
execute as @s at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
clear @s clock

tag @e remove shadowclone_teleport