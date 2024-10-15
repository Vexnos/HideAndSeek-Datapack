execute as @a[team=1] if score @s deaths matches 1.. if score #game gameRunning matches 1 run gamemode spectator @s
execute if score #game gameRunning matches 0 run scoreboard players reset @a deaths
# item replace entity @a[team=2] hotbar.7 with ender_pearl{Enchantments:[{}]}
item replace entity @a[team=2] hotbar.8 with chorus_fruit[enchantment_glint_override=true]