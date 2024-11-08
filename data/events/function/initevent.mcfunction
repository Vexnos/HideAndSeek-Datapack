scoreboard players set #mcountdown mcountdown 5
schedule function events:mcountdown 1s
scoreboard players add #minorEvent minorEvent 1
execute unless score ataraxia Ataraxia matches 1 unless score hoa HOA matches 1 unless score #minorEvent minorEvent matches 9.. run schedule function events:initevent 60s
execute if score ataraxia Ataraxia matches 1 unless score #minorEvent minorEvent matches 5.. run schedule function events:initevent 60s
execute if score hoa HOA matches 1 unless score #minorEvent minorEvent matches 5.. run schedule function events:initevent 60s