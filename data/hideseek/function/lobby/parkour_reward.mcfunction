#
# Description: Reward for Lobby Parkour
# Called by: hideseek:main
# Entity @s: Player
#
# Reset Score
scoreboard players reset @s bellsRung

# Tellraw Message
tellraw @a [{selector:"@s",color:"gold"},{text:" has completed the parkour challenge!",color:"green"}]
tellraw @s {text:"Here is your reward...",color:"gray",italic:true}

# Sounds
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s

# Reward
give @s diamond