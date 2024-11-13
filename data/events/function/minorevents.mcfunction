function events:roller
execute if score #randInt randInt matches 1..5 run effect give @a blindness 5 0 false
execute if score #randInt randInt matches 6..10 run effect give @a speed 10 2 false
execute if score #randInt randInt matches 11..15 run effect give @a poison 10 3 false
execute if score #randInt randInt matches 16..20 run effect give @a slowness 10 3 false
execute if score #randInt randInt matches 21..24 run effect give @a[team=1] resistance 10 5 false
execute if score #randInt randInt matches 25..30 run effect give @a darkness 10 5 false
# execute if score #randInt randInt matches 30 run function events:trayaurus/trayaurus
execute at @a run playsound entity.zombie_villager.cure master @a
scoreboard players add #minorEvent minorEvent 1
execute unless score ataraxia Ataraxia matches 1 unless score hoa HOA matches 1 unless score #minorEvent minorEvent matches 9.. run schedule function events:initevent 60s
# execute if score ataraxia Ataraxia matches 1 unless score #minorEvent minorEvent matches 2.. run schedule function events:initmevent 150s
# execute if score hoa HOA matches 1 unless score #minorEvent minorEvent matches 2.. run schedule function events:initmevent 150s