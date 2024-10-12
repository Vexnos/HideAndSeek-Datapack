tp @a[team=3,x=-731,y=166,z=545,dx=70,dy=20,dz=70] @e[tag=lobby,limit=1]
tp @a[team=1,x=-731,y=166,z=545,dx=70,dy=600,dz=70] @e[tag=start,limit=1]
kill @e[type=wind_charge,x=-731,y=166,z=545,dx=70,dy=600,dz=70]
tp @a[tag=seekerWait] @e[tag=lobby,limit=1]

# execute as @e[type=minecraft:warden] run data merge entity @s {attributes:[{id:"generic.scale",modifiers:[{id:"generic_scale",amount:0.2,operation:add_value}]}]}