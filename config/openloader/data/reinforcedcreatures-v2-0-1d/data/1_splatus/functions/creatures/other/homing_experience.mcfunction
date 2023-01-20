scoreboard players add @s creatures_count 1
execute if score @s creatures_count matches 13..15 run tp @s ~ ~ ~
execute if score @s creatures_count matches 16..18 run tp @s ^ ^ ^.1 facing entity @p[gamemode=!spectator,distance=..64]
execute if score @s creatures_count matches 19..20 run tp @s ^ ^ ^.2 facing entity @p[gamemode=!spectator,distance=..64]
execute if score @s creatures_count matches 21..22 run tp @s ^ ^ ^.4 facing entity @p[gamemode=!spectator,distance=..64]
execute if score @s creatures_count matches 23.. run tp @s ^ ^ ^.8 facing entity @p[gamemode=!spectator,distance=..64]

particle dust 0.431 1 0.169 1 ~ ~ ~

#execute if entity @p[distance=..2,gamemode=!spectator,distance=..64] run summon experience_orb ~ ~ ~ {Value:7}



