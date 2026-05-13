# Add a tag to the player
tag @s add cloner

# Summon a shadowclone and data modify the mannequin's skin with the player's profile UUID. Also set rotation according to the player's rotation
execute at @s[tag=cloner] run summon mannequin ~ ~ ~ {Tags:["shadowclone"]}
execute at @s[tag=cloner] as @s run data modify entity @e[tag=shadowclone,limit=1,sort=nearest] profile.id set from entity @s UUID
execute at @s[tag=cloner] as @s run data modify entity @e[tag=shadowclone,limit=1,sort=nearest] Rotation set from entity @s Rotation

# Get UUID and store in scoreboard
execute at @a[tag=cloner] as @e[tag=shadowclone,limit=1,sort=nearest] run execute store result score @s uuid0 run data get entity @a[tag=cloner,limit=1,sort=nearest] UUID[0]
execute at @a[tag=cloner] as @e[tag=shadowclone,limit=1,sort=nearest] run execute store result score @s uuid1 run data get entity @a[tag=cloner,limit=1,sort=nearest] UUID[1]
execute at @a[tag=cloner] as @e[tag=shadowclone,limit=1,sort=nearest] run execute store result score @s uuid2 run data get entity @a[tag=cloner,limit=1,sort=nearest] UUID[2]
execute at @a[tag=cloner] as @e[tag=shadowclone,limit=1,sort=nearest] run execute store result score @s uuid3 run data get entity @a[tag=cloner,limit=1,sort=nearest] UUID[3]

# Resistance for the shadowclone
effect give @e[type=mannequin,tag=shadowclone] resistance infinite 50 true

# Remove the cloner tag
tag @a remove cloner

# Sounds
execute as @a at @s run playsound minecraft:block.trial_spawner.about_to_spawn_item master @s ~ ~ ~ 100 1

# Revoke the advancement so the player can use the ability again
advancement revoke @s only hideseek:powerups/amethyst_shard