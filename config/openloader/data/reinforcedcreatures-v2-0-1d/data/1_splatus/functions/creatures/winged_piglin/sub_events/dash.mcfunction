execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=400}] at @s run particle firework ~ ~1 ~ .3 .3 .3 .2 10 force
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=400}] at @s run playsound entity.firework_rocket.launch ambient @a[distance=..20]




execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=400..403}] at @s run scoreboard players set @s RNG 3
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=400..403}] at @s if score @s NUM matches 0 run data merge entity @s {Motion:[0.92,0.0,0.0]}
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=400..403}] at @s if score @s NUM matches 1 run data merge entity @s {Motion:[-0.92,0.0,0.0]}
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=400..403}] at @s if score @s NUM matches 2 run data merge entity @s {Motion:[0.0,0.0,-0.92]}
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=400..403}] at @s if score @s NUM matches 3 run data merge entity @s {Motion:[0.0,0.0,0.92]}
#execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=400}] at @s if score @s NUM matches 4 run data merge entity @s {Motion:[0.0,0.32,0.0]}

execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=404..410}] at @s if score @s NUM matches 0 run data merge entity @s {Motion:[0.31,0.0,0.0]}
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=404..410}] at @s if score @s NUM matches 1 run data merge entity @s {Motion:[-0.31,0.0,0.0]}
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=404..410}] at @s if score @s NUM matches 2 run data merge entity @s {Motion:[0.0,0.0,-0.31]}
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=404..410}] at @s if score @s NUM matches 3 run data merge entity @s {Motion:[0.0,0.0,0.31]}
#execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=400}] at @s if score @s NUM matches 4 run data merge entity @s {Motion:[0.0,0.31,0.0]}


execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=412..}] at @s run scoreboard players set @s creatures_time 0
