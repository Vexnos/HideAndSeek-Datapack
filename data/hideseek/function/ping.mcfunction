# Ping the Hiders and Seekers if their respective opposites are nearby
execute if score ping settings matches 1.. at @a[team=1,tag=!out] run playsound minecraft:entity.allay.item_thrown master @a[team=2,distance=..20]
execute if score ping settings matches 1.. at @a[team=2] run playsound minecraft:entity.allay.ambient_with_item master @a[team=1,tag=!out,distance=..30]

# Run the function every 5 seconds
schedule function hideseek:ping 5s