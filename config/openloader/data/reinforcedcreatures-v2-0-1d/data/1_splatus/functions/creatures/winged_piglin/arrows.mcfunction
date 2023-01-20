execute as @e[type=arrow,tag=creatures_winged_piglin_arrow,scores={creatures_time=100..}] at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 .025 3 force
execute as @e[type=arrow,tag=creatures_winged_piglin_arrow,scores={creatures_time=100..}] at @s run kill @s


scoreboard players add @e[type=arrow,tag=creatures_winged_piglin_arrow] creatures_time 1





