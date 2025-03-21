# Always on distance based radar
execute if score pingEnabled pingEnabled matches 1.. at @a[team=1,tag=!out] run playsound minecraft:entity.allay.hurt master @a[team=2,distance=..20] ~ ~ ~ 100 2
execute if score pingEnabled pingEnabled matches 1.. at @a[team=1,tag=!out] run playsound minecraft:entity.allay.hurt master @a[team=2,distance=21..40] ~ ~ ~ 100 1
execute if score pingEnabled pingEnabled matches 1.. at @a[team=1,tag=!out] run playsound minecraft:entity.allay.hurt master @a[team=2,distance=41..60] ~ ~ ~ 100 0
execute if score pingEnabled pingEnabled matches 1.. at @a[team=1,tag=!out] run playsound minecraft:entity.allay.item_thrown master @a[team=2,distance=61..75] ~ ~ ~ 100 2
execute if score pingEnabled pingEnabled matches 1.. at @a[team=1,tag=!out] run playsound minecraft:entity.allay.item_thrown master @a[team=2,distance=76..100] ~ ~ ~ 100 1
execute if score pingEnabled pingEnabled matches 1.. at @a[team=1,tag=!out] run playsound minecraft:entity.allay.item_thrown master @a[team=2,distance=101..] ~ ~ ~ 100 0
execute if score pingEnabled pingEnabled matches 1.. at @a[team=2] run playsound minecraft:entity.allay.ambient_with_item master @a[team=1,tag=!out,distance=..30]

# Run the function every 5 seconds
execute if score darkpeak DarkPeak matches 1 run schedule function hideseek:darkping 5s