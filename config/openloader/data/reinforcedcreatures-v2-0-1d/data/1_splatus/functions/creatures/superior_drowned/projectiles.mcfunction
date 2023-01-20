execute as @e[type=area_effect_cloud,tag=creatures_superiordrowned_trident] at @s run scoreboard players add @s creatures_time 1

#start
execute as @e[type=area_effect_cloud,tag=creatures_superiordrowned_trident,scores={creatures_time=1}] at @s run particle end_rod ~ ~ ~ 0 0 0 .15 3 force
execute as @e[type=area_effect_cloud,tag=creatures_superiordrowned_trident,scores={creatures_time=1}] at @s run playsound entity.ender_eye.death hostile @a[distance=..30] ~ ~ ~ 1.5 1.25


execute as @e[type=area_effect_cloud,tag=creatures_superiordrowned_trident,scores={creatures_time=1..3}] at @s run tp @s ^ ^ ^.05 facing entity @p[distance=..25,gamemode=!creative,gamemode=!spectator]
execute as @e[type=area_effect_cloud,tag=creatures_superiordrowned_trident,scores={creatures_time=4..8}] at @s run tp @s ^ ^ ^.1 facing entity @p[distance=..25,gamemode=!creative,gamemode=!spectator]
execute as @e[type=area_effect_cloud,tag=creatures_superiordrowned_trident,scores={creatures_time=9..11}] at @s run tp @s ^ ^ ^.2 
execute as @e[type=area_effect_cloud,tag=creatures_superiordrowned_trident,scores={creatures_time=12..}] at @s run tp @s ^ ^ ^.5
execute as @e[type=area_effect_cloud,tag=creatures_superiordrowned_trident,scores={creatures_time=1..200}] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=area_effect_cloud,tag=creatures_superiordrowned_trident,scores={creatures_time=200..}] at @s run kill @s


#hit
execute as @e[type=area_effect_cloud,tag=creatures_superiordrowned_trident,scores={creatures_time=1..200}] at @s positioned ~ ~-0.5 ~ if entity @p[distance=..1.25,gamemode=!creative,gamemode=!spectator] run function 1_splatus:creatures/superior_drowned/projectiles_hit

execute as @e[type=area_effect_cloud,tag=creatures_superiordrowned_trident,scores={creatures_time=1..200}] at @s positioned ~ ~-0.5 ~ if entity @p[distance=..1.25,gamemode=!creative,gamemode=!spectator] run kill @s

execute as @e[type=area_effect_cloud,tag=creatures_superiordrowned_trident,scores={creatures_time=1..}] at @s unless block ~ ~ ~ #1_splatus:creatures/permeable run kill @s
