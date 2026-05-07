# Get Max Player
tag @a remove maxHiderWins
execute as @a run scoreboard players operation #max winsAsHider > @s winsAsHider
execute as @a if score @s winsAsHider = #max winsAsHider run tag @s add maxHiderWins

tag @a remove maxSeekerWins
execute as @a run scoreboard players operation #max winsAsSeeker > @s winsAsSeeker
execute as @a if score @s winsAsSeeker = #max winsAsSeeker run tag @s add maxSeekerWins

# Text Display
data merge entity @e[type=text_display,tag=HiderDisplay,limit=1] {text:[{selector:"@a[tag=maxHiderWins,limit=1]",color:"red"},{text:" || ",color:"gray"},{score:{name:"@a[tag=maxHiderWins,limit=1]",objective:"winsAsHider"},color:"gold"}]}
data merge entity @e[type=text_display,tag=SeekerDisplay,limit=1] {text:[{selector:"@a[tag=maxSeekerWins,limit=1]",color:"blue"},{text:" || ",color:"gray"},{score:{name:"@a[tag=maxSeekerWins,limit=1]",objective:"winsAsSeeker"},color:"gold"}]}

# Mannequin
data modify entity @e[type=mannequin,tag=HiderDisplay,limit=1] profile.id set from entity @a[limit=1,tag=maxHiderWins] UUID
data modify entity @e[type=mannequin,tag=SeekerDisplay,limit=1] profile.id set from entity @a[limit=1,tag=maxSeekerWins] UUID

schedule function hideseek:display_scores 5s