execute unless entity @a[tag=seeker] if score seekerAmount seekerAmount matches 1 run team join 2 @a[sort=random,limit=1,tag=!last_seeker]
execute unless entity @a[tag=seeker] if score seekerAmount seekerAmount matches 2 run team join 2 @a[sort=random,limit=2]
execute unless entity @a[tag=seeker] if score seekerAmount seekerAmount matches 3 run team join 2 @a[sort=random,limit=3]
execute unless entity @a[tag=seeker] if score seekerAmount seekerAmount matches 4 run team join 2 @a[sort=random,limit=4]
execute unless entity @a[tag=seeker] if score seekerAmount seekerAmount matches 5 run team join 2 @a[sort=random,limit=5]
execute unless entity @a[tag=seeker] if score seekerAmount seekerAmount matches 6 run team join 2 @a[sort=random,limit=6]
execute unless entity @a[tag=seeker] if score seekerAmount seekerAmount matches 7 run team join 2 @a[sort=random,limit=7]
execute unless entity @a[tag=seeker] if score seekerAmount seekerAmount matches 8 run team join 2 @a[sort=random,limit=8]
execute unless entity @a[tag=seeker] if score seekerAmount seekerAmount matches 9 run team join 2 @a[sort=random,limit=9]
execute unless entity @a[tag=seeker] if score seekerAmount seekerAmount matches 10 run team join 2 @a[sort=random,limit=10]
execute unless entity @a[tag=seeker] if score seekerAmount seekerAmount matches 11 run team join 2 @a[sort=random,limit=11]
execute unless entity @a[tag=seeker] if score seekerAmount seekerAmount matches 12 run team join 2 @a[sort=random,limit=12]
execute if entity @a[tag=seeker] as @a[tag=seeker] run team join 2 @s
execute if entity @a[tag=seeker] run tag @a remove seeker