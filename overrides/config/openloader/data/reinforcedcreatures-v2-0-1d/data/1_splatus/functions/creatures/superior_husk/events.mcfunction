execute as @e[type=husk,tag=creatures_superiorhusk] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s creatures_time 1
execute as @e[type=husk,tag=creatures_superiorhusk,scores={creatures_time=1}] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] run summon minecraft:armor_stand ~ ~1.5 ~ {Tags:["creatures_superiorhusk_sand"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"sand",Count:1b}]}

execute as @e[type=husk,tag=creatures_superiorhusk,scores={creatures_time=55}] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s RNG 2
execute as @e[type=husk,tag=creatures_superiorhusk,scores={creatures_time=55}] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] if score @s NUM matches 1 run summon minecraft:armor_stand ~ ~1.5 ~ {Tags:["creatures_superiorhusk_sand"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"sand",Count:1b}]}


scoreboard players set @e[tag=creatures_superiorhusk,scores={creatures_time=60..}] creatures_time 0





#particles
execute as @e[type=husk,tag=creatures_superiorhusk] at @s run particle dust 0.761 0.651 0.286 1.5 ~ ~1 ~ .3 .5 .3 .2 2 normal @a[distance=..40]
