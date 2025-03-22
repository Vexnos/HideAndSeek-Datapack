# Pick Players
tag @r[team=1, tag=!out] add swap0
tag @r[team=1, tag=!out, tag=!swap0] add swap1
tag @r[team=1, tag=!out, tag=!swap0, tag=!swap1] add swap2
tag @r[team=1, tag=!out, tag=!swap0, tag=!swap1, tag=!swap2] add swap3
tag @r[team=1, tag=!out, tag=!swap0, tag=!swap1, tag=!swap2, tag=!swap3] add swap4

# Summon armor stands
execute at @a[tag=swap0,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap0"],NoGravity:1b}
execute at @a[tag=swap1,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap1"],NoGravity:1b}
execute at @a[tag=swap2,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap2"],NoGravity:1b}
execute at @a[tag=swap3,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap3"],NoGravity:1b}
execute at @a[tag=swap4,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["aswap4"],NoGravity:1b}

# Swap
tp @a[tag=swap0] @e[tag=aswap1,limit=1]
tp @a[tag=swap1] @e[tag=aswap2,limit=1]
tp @a[tag=swap2] @e[tag=aswap3,limit=1]
tp @a[tag=swap3] @e[tag=aswap4,limit=1]
tp @a[tag=swap4] @e[tag=aswap0,limit=1]

# Titles
tellraw @a[team=1, tag=!out] {"text":"You have been swapped!","color":"blue"}

# Remove Tags and Armor Stands
tag @a remove swap0
tag @a remove swap1
tag @a remove swap2
tag @a remove swap3
tag @a remove swap4
kill @e[tag=aswap0]
kill @e[tag=aswap1]
kill @e[tag=aswap2]
kill @e[tag=aswap3]
kill @e[tag=aswap4]
