# Pick Players
tag @r[team=1, tag=!out] add swap0
tag @r[team=1, tag=!out, tag=!swap0] add swap1
tag @r[team=1, tag=!out, tag=!swap0, tag=!swap1] add swap2

# Summon armor stands
execute at @a[tag=swap0,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap0"],NoGravity:1b}
execute at @a[tag=swap1,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap1"],NoGravity:1b}
execute at @a[tag=swap2,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap2"],NoGravity:1b}

# Swap
tp @a[tag=swap0] @e[tag=aswap1,limit=1]
tp @a[tag=swap1] @e[tag=aswap2,limit=1]
tp @a[tag=swap2] @e[tag=aswap0,limit=1]

# Titles
tellraw @a[team=1, tag=!out] {"text":"You have been swapped!","color":"blue"}

# Remove Tags and Armor Stands
tag @a remove swap0
tag @a remove swap1
tag @a remove swap2
kill @e[tag=aswap0]
kill @e[tag=aswap1]
kill @e[tag=aswap2]
