title @a title {"text":"Randomising Event!","color":"green"}
execute at @a run playsound minecraft:block.anvil.land master @a
scoreboard players set #countdown countdown 5
schedule function events:countdown 1s