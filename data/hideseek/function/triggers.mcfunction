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