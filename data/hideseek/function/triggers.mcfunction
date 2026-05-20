#
# Description: Admin triggers
# Called by: hideseek:main
# Entity @s: Player
#
execute if entity @s[scores={start=1..}] as @s run function hideseek:start
execute if entity @s[scores={start=1..}] as @s run scoreboard players set @s start 0

execute if entity @s[scores={seek=1..}] as @s run function hideseek:seek
execute if entity @s[scores={seek=1..}] as @s run scoreboard players set @s seek 0

execute if entity @s[scores={reset=1..}] as @s run function hideseek:reset
execute if entity @s[scores={reset=1..}] as @s run scoreboard players set @s reset 0

execute if entity @s[scores={border1=1..}] as @s run schedule clear hideseek:border1
execute if entity @s[scores={border1=1..}] as @s run function hideseek:border1
execute if entity @s[scores={border1=1..}] as @s run scoreboard players set @s border1 0

execute if entity @s[scores={border2=1..}] as @s run schedule clear hideseek:border2
execute if entity @s[scores={border2=1..}] as @s run function hideseek:border2
execute if entity @s[scores={border2=1..}] as @s run scoreboard players set @s border2 0

execute if entity @s[scores={finalminute=1..}] as @s run schedule clear hideseek:finalminute
execute if entity @s[scores={finalminute=1..}] as @s run function hideseek:finalminute
execute if entity @s[scores={finalminute=1..}] as @s run scoreboard players set @s finalminute 0

execute if entity @s[scores={creepers=1..}] as @s run function hideseek:events/surprisebang
execute if entity @s[scores={creepers=1..}] as @s run scoreboard players set @s creepers 0

execute if entity @s[scores={killerbunnies=1..}] as @s run function hideseek:events/killerbunny/killerbunny
execute if entity @s[scores={killerbunnies=1..}] as @s run scoreboard players set @s killerbunnies 0

execute if entity @s[scores={initguardians=1..}] as @s run function hideseek:events/guardian/guardians
execute if entity @s[scores={initguardians=1..}] as @s run scoreboard players set @s initguardians 0

execute if entity @s[scores={wardens=1..}] as @s run function hideseek:events/wardenflurry/wardens
execute if entity @s[scores={wardens=1..}] as @s run scoreboard players set @s wardens 0

execute if entity @s[scores={zombies=1..}] as @s run function hideseek:events/initzombies
execute if entity @s[scores={zombies=1..}] as @s run scoreboard players set @s zombies 0

execute if entity @s[scores={initswap=1..}] as @s run function hideseek:events/initswap
execute if entity @s[scores={initswap=1..}] as @s run scoreboard players set @s initswap 0

execute if entity @s[scores={breezes=1..}] as @s run function hideseek:events/breeze/breeze
execute if entity @s[scores={breezes=1..}] as @s run scoreboard players set @s breezes 0

execute if entity @s[scores={absdoom=1..}] as @s run function hideseek:events/absdoom/parched
execute if entity @s[scores={absdoom=1..}] as @s run scoreboard players set @s absdoom 0

execute if entity @s[scores={disableteleports=1..}] as @s run function hideseek:events/disableteleports/disable
execute if entity @s[scores={disableteleports=1..}] as @s run scoreboard players set @s disableteleports 0

execute if entity @s[scores={phantoms=1..}] as @s run function hideseek:events/phantoms/phantoms
execute if entity @s[scores={phantoms=1..}] as @s run scoreboard players set @s phantoms 0

execute if entity @s[scores={wither=1..}] as @s run function hideseek:events/wither
execute if entity @s[scores={wither=1..}] as @s run scoreboard players set @s wither 0