import os

MAX_SEEKERS = int(os.environ["MAX_SEEKERS"])

result = ""
for x in range(1, MAX_SEEKERS + 1):
  result += f"execute if score seekerAmount seekerAmount matches {x} run team join 2 @a[sort=random,limit={x}]\n"

with open("data/hideseek/function/seekers.mcfunction", "w") as file:
  file.write(result)
