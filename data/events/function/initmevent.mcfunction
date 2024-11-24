title @a title {"text":"Randomising Event!","color":"green"}
execute at @a run playsound minecraft:block.anvil.land master @a
execute as @a at @s run playsound hideseek:roller master @s
scoreboard players set #countdown countdown 5
schedule function events:countdown 1s
scoreboard players add #majorEvent majorEvent 1
execute unless score ataraxia Ataraxia matches 1 unless score hoa HOA matches 1 unless score #majorEvent majorEvent matches 3.. run schedule function events:initmevent 150s
execute if score ataraxia Ataraxia matches 1 unless score #majorEvent majorEvent matches 2.. run schedule function events:initmevent 150s
execute if score hoa HOA matches 1 unless score #majorEvent majorEvent matches 2.. run schedule function events:initmevent 150s