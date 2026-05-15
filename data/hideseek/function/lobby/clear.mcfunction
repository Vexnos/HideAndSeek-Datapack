execute in hideseek:lobby run clear @a[x=-3,y=170,z=10,dx=6,dy=8,dz=2,gamemode=adventure]
execute in hideseek:lobby run clear @a[x=-2,y=170,z=-1,dx=4,dy=4,dz=4,gamemode=adventure]

execute in hideseek:lobby run kill @e[type=ender_pearl,x=-3,y=170,z=10,dx=6,dy=8,dz=2]
execute in hideseek:lobby run kill @e[type=ender_pearl,x=-2,y=170,z=-1,dx=4,dy=4,dz=4]

execute in hideseek:lobby run kill @e[type=arrow,x=-3,y=170,z=10,dx=6,dy=8,dz=2]
execute in hideseek:lobby run kill @e[type=arrow,x=-2,y=170,z=-1,dx=4,dy=4,dz=4]

execute in hideseek:lobby as @a[x=-2,y=170,z=-1,dx=4,dy=4,dz=7] run effect give @s speed infinite 5 true
execute in hideseek:lobby as @a[x=-2,y=130,z=-40,dx=4,dy=4,dz=4] run effect give @s speed infinite 5 true
execute in hideseek:lobby as @a[x=-3,y=170,z=10,dx=6,dy=8,dz=2] run effect clear @s

execute in hideseek:lobby run kill @e[type=item,x=-3,y=170,z=10,dx=6,dy=8,dz=2]

execute in hideseek:lobby run kill @a[x=-40,y=140,z=-42,dx=100,dy=6,dz=7]
execute in hideseek:lobby run kill @e[x=-40,y=140,z=-42,dx=100,dy=6,dz=7,type=ender_pearl]
execute in hideseek:lobby run kill @e[x=-40,y=140,z=-42,dx=100,dy=6,dz=7,type=arrow]

execute in hideseek:lobby run clear @a[x=-2,y=130,z=-40,dx=4,dy=4,dz=4]

# Mob Teleports out of the pit
execute in hideseek:lobby run tp @e[tag=Gareth,x=-2,y=163,z=41,dx=4,dy=2,dz=4] 0 167 25
execute in hideseek:lobby run tp @e[tag=Trayaurus,x=-2,y=163,z=41,dx=4,dy=2,dz=4] 0 167 25
execute in hideseek:lobby run tp @e[tag=Grace,x=-2,y=163,z=41,dx=4,dy=2,dz=4] 0 167 25
execute in hideseek:lobby run tp @e[tag=Fox,x=-2,y=163,z=41,dx=4,dy=2,dz=4] 0 167 25

execute in hideseek:lobby run kill @e[type=item,x=-2,y=163,z=41,dx=4,dy=2,dz=4]