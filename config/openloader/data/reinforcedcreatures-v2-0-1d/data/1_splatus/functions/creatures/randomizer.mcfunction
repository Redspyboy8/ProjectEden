execute if score count creatures_count matches 2 run forceload add 0 0
execute if score count creatures_count matches 2 run forceload query 0 0
execute if score count creatures_count matches 2 run summon minecraft:area_effect_cloud 0.5 100 0.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_randomizer_entity"]}


execute if score count2 creatures_count matches 1 run scoreboard players set @e[type=area_effect_cloud,tag=creatures_randomizer_entity] RNG 99
execute if score count2 creatures_count matches 6 run scoreboard players set @e[type=area_effect_cloud,tag=creatures_randomizer_entity] RNG 99
execute if score count2 creatures_count matches 11 run scoreboard players set @e[type=area_effect_cloud,tag=creatures_randomizer_entity] RNG 99
execute if score count2 creatures_count matches 16 run scoreboard players set @e[type=area_effect_cloud,tag=creatures_randomizer_entity] RNG 99



#skeli
execute if score count2 creatures_count matches 1 as @e[type=skeleton,tag=creatures_skeleton] at @s run scoreboard players set @s RNG 2
execute if score count2 creatures_count matches 6 as @e[type=skeleton,tag=creatures_skeleton] at @s run scoreboard players set @s RNG 2
execute if score count2 creatures_count matches 11 as @e[type=skeleton,tag=creatures_skeleton] at @s run scoreboard players set @s RNG 2
execute if score count2 creatures_count matches 16 as @e[type=skeleton,tag=creatures_skeleton] at @s run scoreboard players set @s RNG 2

