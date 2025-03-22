# Run the swap if there are more than 1 allegeable players
execute unless score swap swap matches ..1 run function events:swap

# Reroll the Major Events if not
execute if score swap swap matches ..1 run function events:majorevents