title @a title {"text":"Creepers!","color":"dark_green"}
execute at @a run playsound minecraft:entity.creeper.primed master @a
tellraw @a[team=1] {"text":"At your current hiding location, a creeper will spawn in 10 seconds, evacuate!","color":"red"}
execute at @a[team=1,tag=!out] run summon area_effect_cloud ~ ~ ~ {Tags:["creeper"],Duration:300}
schedule function events:creeper 9s