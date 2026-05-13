# Set the Minor Countdown to 5 seconds
scoreboard players set #mcountdown mcountdown 5

# Run the Minor Countdown clock
schedule function hideseek:events/mcountdown 1s

# Say we've run a Minor Event
scoreboard players add #minorEvent minorEvent 1

# Set the amount of times the events should roll for each map
execute unless score hoa HOA matches 1 unless score newworld NewWorld matches 1 unless score cathedral Cathedral matches 1 unless score atlantide Atlantide matches 1 unless score #minorEvent minorEvent matches 9.. run schedule function hideseek:events/initevent 60s
execute if score cathedral Cathedral matches 1 unless score #majorEvent majorEvent matches 19.. run schedule function hideseek:events/initmevent 150s
execute if score atlantide Atlantide matches 1 unless score #majorEvent majorEvent matches 19.. run schedule function hideseek:events/initmevent 150s
execute if score hoa HOA matches 1 unless score #minorEvent minorEvent matches 5.. run schedule function hideseek:events/initevent 60s
execute if score newworld NewWorld matches 1 unless score #minorEvent minorEvent matches 5.. run schedule function hideseek:events/initevent 60s