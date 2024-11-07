title @a title {"text":"Creepers!","color":"dark_green"}
execute at @a run playsound minecraft:entity.creeper.primed master @a
tellraw @a[team=1] {"text":"At your current hiding location, a creeper will spawn in 10 seconds, evacuate!","color":"red"}
execute at @a[team=1,tag=!out] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["creeper"]}
schedule function events:creeper 10s