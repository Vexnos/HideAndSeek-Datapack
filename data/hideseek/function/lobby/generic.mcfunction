execute in hideseek:lobby run clear @a[x=-3,y=170,z=10,dx=6,dy=8,dz=2,gamemode=adventure]
execute in hideseek:lobby run clear @a[x=-2,y=170,z=-1,dx=4,dy=4,dz=4,gamemode=adventure]
execute in hideseek:lobby run clear @a[x=-3,y=170,z=62,dx=6,dy=9,dz=2,gamemode=adventure]

execute in hideseek:lobby run kill @e[type=ender_pearl,x=-3,y=170,z=10,dx=6,dy=8,dz=2]
execute in hideseek:lobby run kill @e[type=ender_pearl,x=-2,y=170,z=-1,dx=4,dy=4,dz=4]
execute in hideseek:lobby run kill @e[type=ender_pearl,x=-3,y=170,z=62,dx=6,dy=9,dz=2]

execute in hideseek:lobby run kill @e[type=arrow,x=-3,y=170,z=10,dx=6,dy=8,dz=2]
execute in hideseek:lobby run kill @e[type=arrow,x=-2,y=170,z=-1,dx=4,dy=4,dz=4]
execute in hideseek:lobby run kill @e[type=arrow,x=-3,y=170,z=62,dx=6,dy=9,dz=2]

execute in hideseek:lobby run kill @e[type=shulker_bullet,x=-3,y=170,z=62,dx=6,dy=9,dz=2]

execute in hideseek:lobby run effect clear @a[x=-3,y=170,z=62,dx=6,dy=9,dz=0]
execute in hideseek:lobby run effect give @a[x=-3,y=170,z=64,dx=6,dy=9,dz=0] trial_omen infinite 0 false
execute in hideseek:lobby run team join 3 @a[x=-3,y=170,z=62,dx=6,dy=9,dz=0]
execute in hideseek:lobby run team leave @a[x=-3,y=170,z=64,dx=6,dy=9,dz=0]

# Trial Omen on Respawn in Arena
execute in hideseek:lobby run effect give @a[nbt=!{active_effects:[{id:"minecraft:trial_omen"}]},x=-1,y=170,z=68,dx=2,dy=3,dz=2] trial_omen infinite 0 false

execute in hideseek:lobby run tag @a[x=-3,y=170,z=62,dx=6,dy=9,dz=0] remove title_card
# execute in hideseek:lobby run title @a[x=-3,y=170,z=62,dx=6,dy=9,dz=0] subtitle ""
execute in hideseek:lobby as @a[x=-3,y=170,z=64,dx=6,dy=9,dz=0,tag=!title_card] run function hideseek:lobby/title_card

execute in hideseek:lobby as @a[x=-2,y=170,z=-1,dx=4,dy=4,dz=7] run effect give @s speed infinite 5 true
execute in hideseek:lobby as @a[x=-2,y=130,z=-40,dx=4,dy=4,dz=4] run effect give @s speed infinite 5 true
execute in hideseek:lobby as @a[x=-3,y=170,z=10,dx=6,dy=8,dz=2] run effect clear @s speed

execute in hideseek:lobby run kill @e[type=item,x=-3,y=170,z=10,dx=6,dy=8,dz=2]

# execute in hideseek:lobby run kill @a[x=-40,y=140,z=-42,dx=100,dy=6,dz=7,gamemode=adventure]
# execute in hideseek:lobby run kill @e[x=-40,y=140,z=-42,dx=100,dy=6,dz=7,type=ender_pearl]
# execute in hideseek:lobby run kill @e[x=-40,y=140,z=-42,dx=100,dy=6,dz=7,type=arrow]

execute in hideseek:lobby run clear @a[x=-2,y=130,z=-40,dx=4,dy=4,dz=4,gamemode=adventure]

# Saturation
execute in hideseek:lobby run effect give @a[x=-2,y=170,z=-1,dx=4,dy=4,dz=4] saturation infinite 0 true
execute in hideseek:lobby run effect give @a[x=-3,y=170,z=62,dx=6,dy=9,dz=0] saturation infinite 0 true
execute in hideseek:lobby run effect clear @a[x=-3,y=170,z=64,dx=6,dy=9,dz=0] saturation
execute in hideseek:lobby run team join 3 @a[x=-2,y=170,z=-1,dx=4,dy=4,dz=4]

# Mob Teleports out of the pit
execute in hideseek:lobby run tp @e[tag=Gareth,x=-2,y=163,z=41,dx=4,dy=2,dz=4] 0 167 25
execute in hideseek:lobby run tp @e[tag=Trayaurus,x=-2,y=163,z=41,dx=4,dy=2,dz=4] 0 167 25
execute in hideseek:lobby run tp @e[tag=Grace,x=-2,y=163,z=41,dx=4,dy=2,dz=4] 0 167 25
execute in hideseek:lobby run tp @e[tag=Fox,x=-2,y=163,z=41,dx=4,dy=2,dz=4] 0 167 25

execute in hideseek:lobby run tp @e[tag=Gareth,x=-3,y=170,z=62,dx=6,dy=9,dz=2] 0 167 25
execute in hideseek:lobby run tp @e[tag=Grace,x=-3,y=170,z=62,dx=6,dy=9,dz=2] 0 167 25
execute in hideseek:lobby run tp @e[tag=Trayaurus,x=-3,y=170,z=62,dx=6,dy=9,dz=2] 0 167 25
execute in hideseek:lobby run tp @e[tag=Fox,x=-3,y=170,z=62,dx=6,dy=9,dz=2] 0 167 25
execute in hideseek:lobby run tp @e[tag=John,x=-3,y=170,z=62,dx=6,dy=9,dz=2] 0 163 43

execute in hideseek:lobby run kill @e[type=item,x=-2,y=163,z=41,dx=4,dy=2,dz=4]