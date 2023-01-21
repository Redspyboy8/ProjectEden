scoreboard players add @e[tag=creatures_skeleton] creatures_time 1
scoreboard players add @e[tag=creatures_skeleton] creatures_time 0
scoreboard players set @e[tag=creatures_skeleton,scores={creatures_time=66..}] creatures_time 0

execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=1..}] at @s run effect give @s speed 100 1 true



execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=2}] at @s unless block ~ ~-0.25 ~ #1_splatus:creatures/permeable if entity @p[distance=..30] at @s if predicate 1_splatus:chance/33_percent run data merge entity @s {Motion:[0.2,0.3,0.0]}
execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=6}] at @s unless block ~ ~-0.25 ~ #1_splatus:creatures/permeable if entity @p[distance=..30] at @s if predicate 1_splatus:chance/33_percent run data merge entity @s {Motion:[-0.5,0.2,0.0]}
execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=11}] at @s unless block ~ ~-0.25 ~ #1_splatus:creatures/permeable if entity @p[distance=..30] at @s if predicate 1_splatus:chance/33_percent run data merge entity @s {Motion:[0.0,0.1,-0.3]}
execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=22}] at @s unless block ~ ~-0.25 ~ #1_splatus:creatures/permeable if entity @p[distance=..30] at @s if predicate 1_splatus:chance/33_percent run data merge entity @s {Motion:[-0.3,0.1,0.2]}
execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=33}] at @s unless block ~ ~-0.25 ~ #1_splatus:creatures/permeable if entity @p[distance=..30] at @s if predicate 1_splatus:chance/33_percent run data merge entity @s {Motion:[-0.1,0.6,0.2]}
execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=42}] at @s unless block ~ ~-0.25 ~ #1_splatus:creatures/permeable if entity @p[distance=..30] at @s if predicate 1_splatus:chance/33_percent run data merge entity @s {Motion:[0.0,0.3,0.3]}
execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=44}] at @s unless block ~ ~-0.25 ~ #1_splatus:creatures/permeable if entity @p[distance=..30] at @s if predicate 1_splatus:chance/33_percent run data merge entity @s {Motion:[0.0,0.2,-0.6]}
execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=39..52}] if entity @p[distance=..30] at @s if predicate 1_splatus:chance/33_percent run tp @s ~ ~ ~ ~40 ~
execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=39..52}] if entity @p[distance=..30] at @s if predicate 1_splatus:chance/33_percent run tp @s ~ ~ ~ ~-40 ~
execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=54}] at @s unless block ~ ~-0.25 ~ #1_splatus:creatures/permeable at @s if entity @p[distance=..30] if predicate 1_splatus:chance/33_percent run data merge entity @s {Motion:[0.0,0.5,0.6]}
execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=58}] at @s unless block ~ ~-0.25 ~ #1_splatus:creatures/permeable at @s if entity @p[distance=..30] if predicate 1_splatus:chance/33_percent run data merge entity @s {Motion:[0.0,0.6,0.3]}

execute as @e[type=skeleton,tag=creatures_skeleton] at @s run particle dust_color_transition 1.000 0.000 0.800 1.5 0.686 0.902 0.706 ~ ~1 ~ .3 .5 .3 22 2 normal



execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=1..},predicate=1_splatus:holding/bow] at @s at @s if entity @p[distance=..30,gamemode=!creative,gamemode=!spectator] if predicate 1_splatus:chance/2_percent run function 1_splatus:creatures/other/commands/summon_boomerang

#chance to drop bow
#execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=56}] at @s run scoreboard players set @s RNG 3

#execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=57}] at @s if entity @p[distance=..15] if predicate 1_splatus:chance/33_percent unless entity @s[nbt=!{HandItems:[{id:"minecraft:bow",Count:1b}]}] run playsound entity.item.pickup hostile @a[distance=..20] ~ ~ ~ 1.2 .85
#execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=57}] at @s if entity @p[distance=..15] if predicate 1_splatus:chance/33_percent unless entity @s[nbt=!{HandItems:[{id:"minecraft:bow",Count:1b}]}] run summon item ~ ~ ~ {Motion:[0.0,0.6,0.0],Item:{id:"minecraft:bow",Count:1b}}
#execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=57}] at @s if entity @p[distance=..15] if predicate 1_splatus:chance/33_percent unless entity @s[nbt=!{HandItems:[{id:"minecraft:bow",Count:1b}]}] run data merge entity @s {HandItems:[{id:"minecraft #1_splatus:creatures/permeable"}]}

##execute as @e[type=skeleton,tag=creatures_skeleton,scores={creatures_time=3}] at @s unless block ~ ~-0.25 ~ #1_splatus:creatures/permeable if entity @p[distance=..30] run data merge entity @s {Motion:[0.0,0.3,0.0]}
