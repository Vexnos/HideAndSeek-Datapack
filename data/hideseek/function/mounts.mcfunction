execute as @e[type=snowball] at @s run ride @p[team=1,gamemode=adventure] mount @s
execute as @e[type=trident] at @s run ride @p[team=2,gamemode=adventure] mount @s
execute as @e[type=egg] at @s run ride @p[team=2,gamemode=adventure] mount @s
execute as @e[type=wind_charge] at @s run ride @p[team=1,gamemode=adventure] mount @s
execute as @e[type=fishing_bobber] at @s run ride @p[team=2,gamemode=adventure] mount @s
execute as @e[type=spectral_arrow] at @s run ride @p[team=1,gamemode=adventure] mount @s
execute at @e[type=trident] run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 100 normal
execute at @e[type=egg] run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0 100 normal
# execute at @e[type=trident] as @p[team=2] run particle minecraft:soul_fire_flame ^2 ^1 ^ 1 1 1 0 100 normal
# execute at @e[type=egg] as @p[team=2] run particle minecraft:soul_fire_flame ^2 ^1 ^ 1 1 1 0 100 normal
# execute at @e[type=snowball] as @p[team=1] run particle minecraft:flame ^2 ^1 ^ 1 1 1 0 100 normal
# execute at @e[type=spectral_arrow] as @p[team=1] run particle minecraft:flame ^2 ^1 ^ 1 1 1 0 100 normal
execute at @e[type=wind_charge] run particle minecraft:gust ~ ~ ~ 0.1 0.1 0.1 0 100 normal
execute at @e[type=minecraft:snowball] run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 100 normal
execute at @e[type=minecraft:spectral_arrow] run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 100 normal
effect give @e[type=wind_charge] glowing infinite 0 true
execute as @e[type=spectral_arrow,nbt={inGround:1b}] at @s run playsound minecraft:item.trident.thunder ambient @a ~ ~ ~ 100 1
execute as @e[type=trident,nbt={inGround:1b}] at @s run playsound minecraft:item.trident.return ambient @a ~ ~ ~ 100 1
execute as @e[type=trident,nbt={inGround:0b}] at @s run playsound minecraft:entity.allay.item_given ambient @a ~ ~ ~ 1 1
execute as @e[type=trident,nbt={inGround:1b}] at @s run playsound minecraft:entity.allay.ambient_without_item ambient @a ~ ~ ~ 1 2
execute as @e[type=spectral_arrow,nbt={inGround:0b}] at @s run playsound minecraft:entity.evoker.cast_spell ambient @a ~ ~ ~ 1 1
execute as @e[type=spectral_arrow,nbt={inGround:1b}] at @s run summon lightning_bolt ~ ~5 ~
kill @e[type=trident,nbt={inGround:1b}]
kill @e[type=spectral_arrow,nbt={inGround:1b}]