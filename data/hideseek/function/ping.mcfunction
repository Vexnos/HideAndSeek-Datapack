execute if score pingEnabled pingEnabled matches 1.. at @a[team=1,tag=!out] run playsound minecraft:entity.allay.item_thrown master @a[team=2,distance=..20]
execute if score pingEnabled pingEnabled matches 1.. at @a[team=2] run playsound minecraft:entity.allay.ambient_with_item master @a[team=1,tag=!out,distance=..30]
schedule function hideseek:ping 5s