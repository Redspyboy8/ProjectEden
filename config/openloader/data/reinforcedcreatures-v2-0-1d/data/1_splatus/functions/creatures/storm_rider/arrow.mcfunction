scoreboard players add @s creatures_time 1

particle dust_color_transition 0.878 0.298 0.878 1.75 0.137 0.278 0.729 ~ ~ ~ .15 .15 .15 1 1 force @a[distance=..64]
execute if score @s creatures_time matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_phantom_bow_arrow_area"]}


tp @e[type=area_effect_cloud,tag=creatures_phantom_bow_arrow_area,sort=nearest,limit=1] @s

execute if entity @s[nbt={inGround:1b}] run kill @s

execute if score @s creatures_time matches 80.. run kill @s
