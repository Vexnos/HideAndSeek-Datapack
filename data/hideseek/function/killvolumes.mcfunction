execute if score tartarus map matches 1.. run execute as @a[team=1,x=-143,y=77,z=2432,dx=175,dy=90,dz=175] run damage @s 10 minecraft:outside_border
execute if score ataraxia map matches 1.. run execute as @a[team=1,x=44,y=245,z=-805,dx=300,dy=90,dz=300] run damage @s 999 minecraft:outside_border
execute if score ataraxia map matches 1.. run execute as @a[team=1,x=44,y=0,z=-805,dx=300,dy=70,dz=300] run damage @s 999 minecraft:outside_border
execute if score tempus map matches 1.. run execute as @a[team=1,x=-3507,y=65,z=1161,dx=160,dy=50,dz=160] run damage @s 1.5 minecraft:outside_border
execute in the_end if score end map matches 1.. run execute as @a[team=1,x=-1228,y=230,z=-793,dx=300,dy=900,dz=300] run damage @s 4 minecraft:outside_border
kill @e[gamemode=!spectator,gamemode=!creative,x=199,y=70,z=2129,dx=550,dy=106,dz=550]

# Imperial Star Destroyer Kill Barrier
execute if score imperator map matches 1 in hideseek:imperator as @a[tag=!out,gamemode=adventure,team=1,x=-1427,y=715,z=-148,dx=300,dy=-100,dz=300] run damage @s 1.5 outside_border

# Castle Kill Barrier
execute if score castle map matches 1 in hideseek:castle as @a[tag=!out,gamemode=adventure,team=1,x=91,y=102,z=-130,dx=110,dy=-200,dz=110] run damage @s 10 outside_border