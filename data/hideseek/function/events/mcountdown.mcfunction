# Titles and Sound
# execute if score mcountdown countdown matches 0 run title Herobrine title {"text":""}
# execute if score mcountdown countdown matches 4.. run title @a title {"score":{"name":"#mcountdown","objective":"mcountdown"},"color":"dark_green"}
# execute if score mcountdown countdown matches 3 run title @a title {"score":{"name":"#mcountdown","objective":"mcountdown"},"color":"green"}
# execute if score mcountdown countdown matches 2 run title @a title {"score":{"name":"#mcountdown","objective":"mcountdown"},"color":"yellow"}
# execute if score mcountdown countdown matches 1 run title @a title {"score":{"name":"#mcountdown","objective":"mcountdown"},"color":"red"}
execute as @a at @s run playsound minecraft:block.note_block.didgeridoo master @s

# Countdown Logic
execute if score mcountdown countdown matches 2.. run schedule function hideseek:events/mcountdown 1s
execute if score mcountdown countdown matches 1 run schedule function hideseek:events/minorevents 1s
scoreboard players remove mcountdown countdown 1