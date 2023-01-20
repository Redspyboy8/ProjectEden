scoreboard players add @s creatures_time 1


execute if score @s creatures_time matches 1 store result entity @s Rotation[0] float 1 run data get entity @e[sort=nearest,limit=1,type=!#1_splatus:creatures/misc] Rotation[0]
execute if score @s creatures_time matches 1 store result entity @s Rotation[1] float 1 run data get entity @e[sort=nearest,limit=1,type=!#1_splatus:creatures/misc] Rotation[1]

execute if score @s creatures_time matches 5 positioned ~ ~-1.5 ~ run function 1_splatus:creatures/other/commands/firework_pillager_1
execute if score @s creatures_time matches 8 positioned ~ ~-1.5 ~ run function 1_splatus:creatures/other/commands/firework_pillager_2
execute if score @s creatures_time matches 11 positioned ~ ~-1.5 ~ run function 1_splatus:creatures/other/commands/firework_pillager_3


tp @s ^ ^ ^1.5


execute if score @s creatures_time matches 13 run kill @s


