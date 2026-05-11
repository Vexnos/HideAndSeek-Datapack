# Summon Parched
execute at @e[tag=start,limit=1] run summon parched ~ ~ ~ {equipment:{mainhand:{id:netherite_spear,components:{enchantments:{sharpness:5,lunge:3}}}},Invulnerable:1b,attributes:[{id:"minecraft:movement_speed",modifiers:[{id:"movement_speed",amount:0.5,operation:add_value}]}],Team:"4",Glowing:true}

# Sounds
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s

# Timer logic
scoreboard players remove #doomTimer doomTimer 1
execute unless score #doomTimer doomTimer matches 0 run schedule function hideseek:events/absdoom/summon 1s