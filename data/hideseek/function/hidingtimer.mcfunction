scoreboard players remove #hidingTime hidingTime 1
execute store result bossbar hidingtimer value run scoreboard players get #hidingTime hidingTime
schedule function hideseek:hidingtimer 1s