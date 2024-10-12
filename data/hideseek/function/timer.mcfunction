scoreboard players add Timer time 1
execute if score Timer time matches 60.. run scoreboard players add Minutes minutes 1
execute if score Timer time matches 60.. run scoreboard players set Timer time 0
execute if score Minutes minutes matches 0 if score Timer time matches 0 run title @a actionbar ["",{"text":"0:00","color":"yellow"}]
execute if score Minutes minutes matches 0 if score Timer time matches 1..9 run title @a actionbar ["",{"text":"0:0","color":"yellow"},{"score":{"name":"Timer","objective":"time"},"color":"yellow"}]
execute if score Minutes minutes matches 0 if score Timer time matches 10.. run title @a actionbar ["",{"text":"0:","color":"yellow"},{"score":{"name":"Timer","objective":"time"},"color":"yellow"}]
execute if score Minutes minutes matches 1.. if score Timer time matches 0 run title @a actionbar ["",{"score":{"name":"Minutes","objective":"minutes"},"color":"yellow"},{"text":":00","color":"yellow"}]
execute if score Minutes minutes matches 1.. if score Timer time matches 1..9 run title @a actionbar ["",{"score":{"name":"Minutes","objective":"minutes"},"color":"yellow"},{"text":":0","color":"yellow"},{"score":{"name":"Timer","objective":"time"},"color":"yellow"}]
execute if score Minutes minutes matches 1.. if score Timer time matches 10.. run title @a actionbar ["",{"score":{"name":"Minutes","objective":"minutes"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"Timer","objective":"time"},"color":"yellow"}]
schedule function hideseek:timer 1s