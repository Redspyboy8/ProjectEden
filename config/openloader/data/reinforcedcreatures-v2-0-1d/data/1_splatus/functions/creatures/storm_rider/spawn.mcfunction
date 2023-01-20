scoreboard players add @s[predicate=1_splatus:in/overworld] creatures_storm_rider_spawn 1






execute as @s[scores={creatures_storm_rider_spawn=3000..}] at @s if predicate 1_splatus:chance/4_percent run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_storm_rider_spawner"]}
execute as @s[scores={creatures_storm_rider_spawn=3000..}] at @s run spreadplayers ~ ~ 32 32 false @e[type=area_effect_cloud,distance=..1,tag=creatures_storm_rider_spawner]

execute as @s[scores={creatures_storm_rider_spawn=3000..}] at @s as @e[type=area_effect_cloud,tag=creatures_storm_rider_spawner] at @s run function 1_splatus:creatures/storm_rider/summon_naturally



scoreboard players reset @s[predicate=1_splatus:in/overworld,scores={creatures_storm_rider_spawn=3000..}] creatures_storm_rider_spawn
scoreboard players reset @s[predicate=!1_splatus:in/overworld] creatures_storm_rider_spawn


