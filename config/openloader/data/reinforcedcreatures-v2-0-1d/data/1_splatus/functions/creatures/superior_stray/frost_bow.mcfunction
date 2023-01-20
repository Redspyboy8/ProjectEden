


execute store result score @s creatures_uuid1 run data get entity @s UUID[0]
execute store result score @s creatures_uuid2 run data get entity @s UUID[1]



execute as @e[distance=..6,type=arrow,tag=!creatures_frost_bow_arrow,nbt=!{inGround:1b}] store result score @s creatures_uuid1 run data get entity @s Owner[0]
execute as @e[distance=..6,type=arrow,tag=!creatures_frost_bow_arrow,nbt=!{inGround:1b}] store result score @s creatures_uuid2 run data get entity @s Owner[1]

execute as @e[distance=..6,type=spectral_arrow,tag=!creatures_frost_bow_arrow,nbt=!{inGround:1b}] store result score @s creatures_uuid1 run data get entity @s Owner[0]
execute as @e[distance=..6,type=spectral_arrow,tag=!creatures_frost_bow_arrow,nbt=!{inGround:1b}] store result score @s creatures_uuid2 run data get entity @s Owner[1]

execute as @e[distance=..6,type=arrow,tag=!creatures_frost_bow_arrow] at @s if score @s creatures_uuid1 = @p creatures_uuid1 if score @s creatures_uuid2 = @p creatures_uuid2 run tag @s add creatures_frost_bow_arrow
execute as @e[distance=..6,type=spectral_arrow,tag=!creatures_frost_bow_arrow] at @s if score @s creatures_uuid1 = @p creatures_uuid1 if score @s creatures_uuid2 = @p creatures_uuid2 run tag @s add creatures_frost_bow_arrow



