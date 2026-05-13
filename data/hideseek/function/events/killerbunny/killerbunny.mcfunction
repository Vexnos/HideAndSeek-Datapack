# Title
title @a title [{type:"object",object:"atlas",atlas:"minecraft:particles",sprite:"minecraft:heart"},{"text":" Killer Bunnies! ","color":"red"},{type:"object",object:"atlas",atlas:"minecraft:particles",sprite:"minecraft:heart"}]

# Sounds
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon master @s

# Give Existing Bunnies Jump Boost
effect give @e[type=rabbit,nbt={RabbitType:99}] jump_boost 10 15 true

# Give players the Holy Hand Grenade
give @a[team=1] lingering_potion[custom_model_data={strings:["holy_hand_grenade"]},custom_name=[{text:"a",obfuscated:true,color:"gold",bold:true},{text:"The Holy Hand Grenade of Antioch",obfuscated:false},{text:"a"}],lore=[{text:"And the Lord spake, saying, ",color:"yellow"},{text:"'First shalt thou take out the Holy Pin.",color:"yellow"},{text:"Then shalt thou count to three, no more, no less.",color:"yellow"},{text:"Three shall be the number thou shalt count, and the number of the counting shall be three.",color:"yellow"},{text:"Four shalt thou not count, neither count thou two, excepting that thou then proceed to three.",color:"yellow"},{text:"Five is right out.",color:"yellow"},{text:"Once the number three, being the third number, be reached,",color:"yellow"},{text:"then lobbest thou thy Holy Hand Grenade of Antioch towards thy foe,",color:"yellow"},{text:"who, being naughty in My sight, shall snuff it.'",color:"yellow"}],potion_contents={custom_effects:[{id:"minecraft:unluck",amplifier:0,duration:5}]}]

# Set the timer to 10 seconds
scoreboard players set bunnies time 20

# Summon Phantoms
function hideseek:events/killerbunny/summon
