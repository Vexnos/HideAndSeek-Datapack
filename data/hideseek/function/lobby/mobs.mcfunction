# Invisible Fox
summon fox ~ ~1 ~ {active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:true},{id:"resistance",amplifier:127,duration:-1}],attributes:[{id:"movement_speed",modifiers:[{amount:0.2,id:"movement_speed",operation:add_value}]}],Tags:["Fox"],equipment:{chest:{id:"netherite_chestplate",count:1,components:{enchantments:{thorns:255},unbreakable:{}}}}}

# Ryland Grace Reference
summon fox ~ ~ ~ {Type:"snow",CustomName:{text:"Grace"},attributes:[{id:"minecraft:max_health",modifiers:[{id:"max_health",amount:1024,operation:add_value}]}],Health:1024.0f,Invulnerable:1b,equipment:{mainhand:{id:"minecraft:nether_star",count:1}},drop_chances:{mainhand:0.000},CanPickUpLoot:false,Tags:["Grace"]}

# Gareth
summon panda ~ ~ ~ {Invulnerable:1b,CustomName:"Gareth",Tags:["Gareth"],attributes:[{id:"max_health",modifiers:[{amount:1024,id:"max_health",operation:add_value}]}],Health:1024.0f}

# John Skellington (A Replacement for Gregory the Zombie)
summon skeleton ~ ~ ~ {CustomName:{text:"[Seeker] John Skellington",color:"blue"},active_effects:[{id:"minecraft:resistance",amplifier:127,duration:-1,show_particles:false},{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:false}],equipment:{head:{id:"golden_helmet",count:1,components:{trim:{material:"minecraft:lapis",pattern:"minecraft:silence"},unbreakable:{},enchantment_glint_override:true}},mainhand:{id:"minecraft:stick",count:1,components:{custom_name:{text:"Whacky Stick",color:"aqua",italic:true},lore:[{text:"Whack them moles",color:"dark_aqua",italic:false}],enchantment_glint_override:true,attribute_modifiers:[{id:"attack_damage",type:"attack_damage",amount:9,operation:"add_value"}]}}},Tags:["John","NoKill"],attributes:[{id:"minecraft:movement_speed",modifiers:[{id:"movement_speed",amount:0.35,operation:add_value}]}],PersistenceRequired:1b}

# Dr Trayaurus
summon villager ~ ~ ~ {CustomName:{text:"Dr Trayaurus"},VillagerData:{profession:"librarian",level:5,type:"plains"},Invulnerable:1b,Tags:["Trayaurus"]}

# Gwen the Guardian
summon guardian ~ ~ ~ {CustomName:{text:"Gwen the Guardian"},Invulnerable:1b,Team:"3",PersistenceRequired:1b,Tags:["Gwen"]}