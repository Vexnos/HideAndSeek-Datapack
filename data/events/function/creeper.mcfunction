# Summon a creeper at the area effect cloud (recorded player location)
execute at @e[tag=creeper] run summon creeper ~ ~ ~ {powered:1b,Fuse:200,ignited:1b,NoGravity:1b}

# Kill the area effect cloud
kill @e[tag=creeper]