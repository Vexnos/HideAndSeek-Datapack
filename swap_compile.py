import os

MAX_HIDERS = int(os.environ["MAX_HIDERS"])

result = ""

for x in range(2, MAX_HIDERS + 1):
  result += f"execute if score swap swap matches {x} run function events:{x}swap\n"

result += 'title @a title {"text":"Swap!","color":"blue"}\nexecute as @a at @s run playsound minecraft:entity.enderman.teleport master @s\n'

with open("data/events/function/swap.mcfunction", "w") as file:
  file.write(result)

for x in range(2, MAX_HIDERS + 1):
  result = "# Pick Players\n"

  tags = [f"swap{y}" for y in range(x)]

  processed_tags = ""
  for tag in tags:
    result += f"tag @r[team=1, tag=!out{processed_tags}] add {tag}\n"
    processed_tags += f", tag=!{tag}"
  
  for tag in tags:
    result += 'execute at @a[tag=' + tag + ',limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["a' + tag + '"],NoGravity:1b}\n'
  
  for y in range(x):
    new_y = (y + 1) % x
    result += f"tp @a[tag=swap{y}] @e[tag=aswap{new_y},limit=1]\n"

  result += '\n# Titles\ntellraw @a[team=1, tag=!out] {"text":"You have been swapped!","color":"blue"}\n'
  
  result += "\n# Remove Tags and Armor Stands\n"

  for tag in tags:
    result += f"tag @a remove {tag}\n"

  for tag in tags:
    result += f"kill @e[tag=a{tag}]\n"

  with open(f"data/events/function/{x}swap.mcfunction", "w") as file:
    file.write(result)
