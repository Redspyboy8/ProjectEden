scoreboard players add @s creatures_time 1

particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]
particle dust 0.769 0.855 0.914 1 ~ ~ ~ .05 .05 .05 .2 2 force @a[distance=..64]


execute if score @s creatures_time matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_frost_bow_arrow_area"]}


tp @e[type=area_effect_cloud,tag=creatures_frost_bow_arrow_area,sort=nearest,limit=1] @s

execute if entity @s[nbt={inGround:1b}] run function 1_splatus:creatures/superior_stray/arrow_break
execute if entity @s[nbt={inGround:1b}] run kill @e[type=area_effect_cloud,tag=creatures_frost_bow_arrow_area,sort=nearest,limit=1]
execute if entity @s[nbt={inGround:1b}] run kill @s

execute if score @s creatures_time matches 18.. run kill @s
