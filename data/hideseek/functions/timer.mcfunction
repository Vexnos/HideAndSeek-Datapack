execute if score Timer time matches 1.. run execute if score Minutes minutes matches 0 run title @a actionbar ["",{"text":"0","color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"Timer","objective":"time"},"color":"yellow"}]
execute if score Timer time matches 1.. run execute if score Minutes minutes matches 1.. run title @a actionbar ["",{"score":{"name":"Minutes","objective":"minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"Timer","objective":"time"},"color":"yellow"}]
execute if score Timer time matches 60.. run scoreboard players add Minutes minutes 1
execute if score Timer time matches 60.. run scoreboard players set Timer time 0
scoreboard players add Timer time 1
schedule function hideseek:timer 1s