# Set the Minor Countdown to 5 seconds
scoreboard players set mcountdown countdown 5

# Run the Minor Countdown clock
schedule function hideseek:events/mcountdown 1s

# Say we've run a Minor Event
scoreboard players add minorEvent events 1

# Set the amount of times the events should roll for each map
execute unless score HOA map matches 1 unless score newWorld map matches 1 unless score cathedral map matches 1 unless score atlantide map matches 1 unless score minorEvent events matches 9.. run schedule function hideseek:events/initevent 60s
execute if score cathedral map matches 1 unless score majorEvent events matches 11.. run schedule function hideseek:events/initmevent 150s
execute if score atlantide map matches 1 unless score majorEvent events matches 11.. run schedule function hideseek:events/initmevent 150s
execute if score HOA map matches 1 unless score minorEvent events matches 5.. run schedule function hideseek:events/initevent 60s
execute if score newWorld map matches 1 unless score minorEvent events matches 5.. run schedule function hideseek:events/initevent 60s