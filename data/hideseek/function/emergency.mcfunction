#
# Description: Summon armour stands required to start the game
# Called by: Player
# Entity @s: None
#
# Summon Armor Stands
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["start"],DisabledSlots:4144959}
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["lobby"],DisabledSlots:4144959}

# Give glowing effect for debugging
effect give @e[type=armor_stand,tag=start] glowing infinite 0 true
effect give @e[type=armor_stand,tag=lobby] glowing infinite 0 true