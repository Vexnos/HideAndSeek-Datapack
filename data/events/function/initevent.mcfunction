# Set the Minor Countdown to 5 seconds
scoreboard players set #mcountdown mcountdown 5

# Run the Minor Countdown clock
schedule function events:mcountdown 1s

# Say we've run a Minor Event
scoreboard players add #minorEvent minorEvent 1

# Set the amount of times the events should roll for each map
execute unless score ataraxia Ataraxia matches 1 unless score hoa HOA matches 1 unless score newworld NewWorld matches 1 unless score #minorEvent minorEvent matches 9.. run schedule function events:initevent 60s
execute if score ataraxia Ataraxia matches 1 unless score #minorEvent minorEvent matches 5.. run schedule function events:initevent 60s
execute if score hoa HOA matches 1 unless score #minorEvent minorEvent matches 5.. run schedule function events:initevent 60s
execute if score newworld NewWorld matches 1 unless score #minorEvent minorEvent matches 5.. run schedule function events:initevent 60s