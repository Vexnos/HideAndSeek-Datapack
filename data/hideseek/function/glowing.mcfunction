# Give glowing to Seeker if a Hider is nearby
execute if score glowing settings matches 1.. unless score hindengburg Hindenburg matches 1 at @a[team=1,tag=!out] run effect give @a[team=2,distance=..10] glowing 5 0 false
execute if score glowing settings matches 1.. if score hindenburg map matches 1 at @a[team=2] run effect give @a[team=1,distance=..5] glowing 5 0 false