execute at @s run summon mannequin ~ ~ ~ {Tags:["shadowclone"]}
execute at @s as @s run data modify entity @e[tag=shadowclone,limit=1,sort=nearest] profile.id set from entity @s UUID
execute at @s as @s run data modify entity @e[tag=shadowclone,limit=1,sort=nearest] Rotation set from entity @s Rotation
execute at @s as @s run data modify entity @e[tag=shadowclone,limit=1,sort=nearest] Motion set from entity @s Motion

advancement revoke @s only hideseek:powerups/clock