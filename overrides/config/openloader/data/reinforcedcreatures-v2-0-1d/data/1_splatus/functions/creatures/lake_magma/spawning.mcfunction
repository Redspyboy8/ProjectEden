scoreboard players add @s[predicate=1_splatus:in/the_nether] creatures_lake_magma_spawn 1






execute as @s[scores={creatures_lake_magma_spawn=140..}] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_lake_magma_spawner"]}
execute as @s[scores={creatures_lake_magma_spawn=140..}] at @s run spreadplayers ~ ~ 96 96 false @e[type=area_effect_cloud,distance=..1,tag=creatures_lake_magma_spawner]
execute as @s[scores={creatures_lake_magma_spawn=140..}] at @s as @e[type=area_effect_cloud,tag=creatures_lake_magma_spawner] at @s run tp @s ~ 31 ~

execute as @s[scores={creatures_lake_magma_spawn=140..}] at @s as @e[type=area_effect_cloud,tag=creatures_lake_magma_spawner] at @s if block ~ ~ ~ lava unless block ~ ~1 ~ lava if predicate 1_splatus:chance/25_percent run function 1_splatus:creatures/lake_magma/summon_naturally



scoreboard players reset @s[predicate=1_splatus:in/the_nether,scores={creatures_lake_magma_spawn=140..}] creatures_lake_magma_spawn
scoreboard players reset @s[predicate=!1_splatus:in/the_nether] creatures_lake_magma_spawn


