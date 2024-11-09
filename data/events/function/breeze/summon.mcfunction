execute at @a[team=1,tag=!out] run summon breeze ~ ~ ~ {Team:"2",attributes:[{id:"minecraft:generic.max_health",modifiers:[{id:"max_health",amount:1,operation:add_value}]}],Health:1f}
execute at @a run playsound minecraft:entity.evoker.prepare_summon master @a
scoreboard players remove #breezeTimer breezeTimer 1
execute unless score #breezeTimer breezeTimer matches 0 run schedule function events:breeze/summon 1s