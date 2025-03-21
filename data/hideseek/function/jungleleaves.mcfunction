# Damage players standing on Leaves in Felora (Disabled)
# execute if score felora Felora matches 1.. as @a[team=1] at @s if block ~ ~-1 ~ jungle_leaves run damage @s 1.5 minecraft:sting
# execute if score felora Felora matches 1.. as @a[team=1] at @s if block ~ ~-1 ~ oak_leaves run damage @s 1.5 minecraft:sting
# execute if score felora Felora matches 1.. as @a[team=1] at @s if block ~ ~-2 ~ jungle_leaves run damage @s 1.5 minecraft:sting
# execute if score felora Felora matches 1.. as @a[team=1] at @s if block ~ ~-2 ~ oak_leaves run damage @s 1.5 minecraft:sting
# execute if score felora Felora matches 1.. as @a[team=1] at @s if block ~ ~-3 ~ jungle_leaves run damage @s 1.5 minecraft:sting
# execute if score felora Felora matches 1.. as @a[team=1] at @s if block ~ ~-3 ~ oak_leaves run damage @s 1.5 minecraft:sting
# execute if score felora Felora matches 1.. as @a[team=1] at @s if block ~ ~-4 ~ jungle_leaves run damage @s 1.5 minecraft:sting
# execute if score felora Felora matches 1.. as @a[team=1] at @s if block ~ ~-4 ~ oak_leaves run damage @s 1.5 minecraft:sting

# Damage players in water on Water Maps
execute if score kawaiinislands KawaiinIslands matches 1.. as @a[team=1] at @s if block ~ ~ ~ water run damage @s 1.5 minecraft:sting
execute if score kawaiinislands KawaiinIslands matches 1.. as @a[team=1] at @s if block ~ ~-1 ~ water run damage @s 1.5 minecraft:sting
execute if score kawaiinislands KawaiinIslands matches 1.. as @a[team=1] at @s if block ~ ~-2 ~ water run damage @s 1.5 minecraft:sting
execute if score queenmary2 QueenMary2 matches 1.. as @a[team=1] at @s if block ~ ~ ~ water run damage @s 1.5 minecraft:sting
execute if score queenmary2 QueenMary2 matches 1.. as @a[team=1] at @s if block ~ ~-1 ~ water run damage @s 1.5 minecraft:sting
execute if score queenmary2 QueenMary2 matches 1.. as @a[team=1] at @s if block ~ ~-2 ~ water run damage @s 1.5 minecraft:sting
execute if score poseidon Poseidon matches 1.. as @a[team=1] at @s if block ~ ~ ~ water run damage @s 1.5 minecraft:sting
execute if score poseidon Poseidon matches 1.. as @a[team=1] at @s if block ~ ~-1 ~ water run damage @s 1.5 minecraft:sting
execute if score poseidon Poseidon matches 1.. as @a[team=1] at @s if block ~ ~-2 ~ water run damage @s 1.5 minecraft:sting

# Run the function every 10 ticks
schedule function hideseek:jungleleaves 10t