# Give the clock to players
give @s clock[custom_name={text:"TP to Shadow Clone",italic:false,color:"light_purple"},enchantment_glint_override=true,consumable={animation:trident,consume_seconds:3,sound:"minecraft:entity.enderman.teleport",has_consume_particles:false},use_cooldown={seconds:30,cooldown_group:"teleport_to_shadowclone"},max_stack_size=2] 1

# Add a tag so the playe doesn't constantly receive a clock
tag @s add itemsGiven