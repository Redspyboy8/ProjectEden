scoreboard players add @s creatures_time 1


execute if score @s creatures_time matches 1 store result entity @s Rotation[0] float 1 run data get entity @e[sort=nearest,limit=1,type=!#1_splatus:creatures/misc] Rotation[0]
execute if score @s creatures_time matches 1 store result entity @s Rotation[1] float 1 run data get entity @e[sort=nearest,limit=1,type=!#1_splatus:creatures/misc] Rotation[1]


execute if score @s creatures_time matches 1 run tag @e[sort=nearest,limit=1,type=!#1_splatus:creatures/misc] add creatures_boomerang_target
execute if score @s creatures_time matches 1 run scoreboard players set @e[sort=nearest,limit=1,type=!#1_splatus:creatures/misc] creatures_boomerang 1


execute as @e[distance=..2,type=armor_stand,tag=creatures_boomerang_armorstand,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~30 ~
tp @e[distance=..2,type=armor_stand,tag=creatures_boomerang_armorstand,sort=nearest,limit=1] ~ ~ ~


execute as @e[distance=..2,tag=creatures_boomerang_armorstand_damage,type=armor_stand] at @s as @e[distance=..1.5,type=!#1_splatus:creatures/misc,tag=!creatures_boomerang_target] run function 1_splatus:creatures/other/damage/entity_damage3




execute if score @s[tag=creatures_boomerang_armorstand_damage] creatures_time matches 1..5 run tp @s ^ ^ ^.75 facing entity @p[gamemode=!creative,gamemode=!spectator]
execute if score @s[tag=creatures_boomerang_armorstand_damage] creatures_time matches 6..10 run tp @s ^ ^ ^.375 facing entity @p[gamemode=!creative,gamemode=!spectator]
execute if score @s[tag=creatures_boomerang_armorstand_damage] creatures_time matches 11..13 run tp @s ^ ^ ^.01 facing entity @p[gamemode=!creative,gamemode=!spectator]

execute if score @s[tag=!creatures_boomerang_armorstand_damage] creatures_time matches 1..5 run tp @s ^ ^ ^.75
execute if score @s[tag=!creatures_boomerang_armorstand_damage] creatures_time matches 6..10 run tp @s ^ ^ ^.375
execute if score @s[tag=!creatures_boomerang_armorstand_damage] creatures_time matches 11..13 run tp @s ^ ^ ^.01


execute if score @s creatures_time matches 25..30 run tp @s ^ ^ ^.01
execute if score @s creatures_time matches 31..35 run tp @s ^ ^ ^.375
execute if score @s creatures_time matches 36.. run tp @s ^ ^ ^.75

execute if score @s creatures_time matches 25.. if score count3 creatures_count matches 0 run tp @s ^ ^ ^ facing entity @e[tag=creatures_boomerang_target,limit=1,sort=nearest]



execute if score @s creatures_time matches 11.. if entity @e[sort=nearest,limit=1,tag=creatures_boomerang_target,distance=..0.4] run function 1_splatus:creatures/enraged_skeleton/boomerang_returned



execute if score @s creatures_time matches 150.. run function 1_splatus:creatures/enraged_skeleton/boomerang_returned
