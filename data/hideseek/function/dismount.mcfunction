# Revoke the advancement to stop the function running more than once
advancement revoke @s only hideseek:powerups/dismount

# Sounds
execute at @s run playsound minecraft:item.trident.return ambient @a ~ ~ ~ 100 1
execute at @s run playsound minecraft:entity.allay.ambient_without_item ambient @a ~ ~ ~ 1 2
execute at @s run particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 2 200 force

# Kill the closest trident (usually the one the seeker is riding)
execute at @s run kill @e[type=trident,sort=nearest]

# Give new tripwire hook
give @s tripwire_hook[consumable={consume_seconds:0.05},custom_name={"text":"Dismount Grappling Hook","italic":false,"color":"blue"},use_cooldown={seconds:0.5,cooldown_group:"dismount"},max_stack_size=2]