# Titles and Sound
# execute if score #mcountdown mcountdown matches 0 run title Herobrine title {"text":""}
# execute if score #mcountdown mcountdown matches 4.. run title @a title {"score":{"name":"#mcountdown","objective":"mcountdown"},"color":"dark_green"}
# execute if score #mcountdown mcountdown matches 3 run title @a title {"score":{"name":"#mcountdown","objective":"mcountdown"},"color":"green"}
# execute if score #mcountdown mcountdown matches 2 run title @a title {"score":{"name":"#mcountdown","objective":"mcountdown"},"color":"yellow"}
# execute if score #mcountdown mcountdown matches 1 run title @a title {"score":{"name":"#mcountdown","objective":"mcountdown"},"color":"red"}
execute at @a run playsound minecraft:block.note_block.didgeridoo master @a

# Countdown Logic
execute if score #mcountdown mcountdown matches 2.. run schedule function events:mcountdown 1s
execute if score #mcountdown mcountdown matches 1 run schedule function events:minorevents 1s
scoreboard players remove #mcountdown mcountdown 1