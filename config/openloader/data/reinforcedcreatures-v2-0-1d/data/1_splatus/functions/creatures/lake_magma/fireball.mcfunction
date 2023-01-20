scoreboard players add @s creatures_time 1



execute if score @s creatures_time matches 1..2 store result entity @s Rotation[0] float 1 run data get entity @e[sort=nearest,limit=1,type=!area_effect_cloud] Rotation[0]
execute if score @s creatures_time matches 1..2 store result entity @s Rotation[1] float 1 run data get entity @e[sort=nearest,limit=1,type=!area_effect_cloud] Rotation[1]

particle large_smoke ~ ~ ~ .05 .05 .05 .01 2 force @a[distance=..64]
particle flame ~ ~ ~ .1 .1 .1 .075 1 force @a[distance=..64]

execute unless block ~ ~-0.15 ~ #1_splatus:creatures/permeable run scoreboard players set @s creatures_time2 0
execute if block ~ ~-0.15 ~ lava run scoreboard players set @s creatures_time2 0




function 1_splatus:creatures/lake_magma/fireball_movement



execute if score @s creatures_time matches 1..5 at @s run tp @s ^ ^ ^.6
execute if score @s creatures_time matches 6..50 at @s run tp @s ^ ^ ^.5
execute if score @s creatures_time matches 51..70 at @s run tp @s ^ ^ ^.25
execute if score @s creatures_time matches 71..90 at @s run tp @s ^ ^ ^.115
execute if score @s creatures_time matches 81..110 at @s run tp @s ^ ^ ^.05
execute if score @s creatures_time matches 111..130 at @s run tp @s ^ ^ ^.025
execute if score @s creatures_time matches 131.. at @s run tp @s ^ ^ ^0

execute if score @s creatures_time matches 300.. run kill @s



execute if entity @e[distance=..2.25,type=!#1_splatus:creatures/misc,tag=!creatures_lake_magma] run function 1_splatus:creatures/lake_magma/hit