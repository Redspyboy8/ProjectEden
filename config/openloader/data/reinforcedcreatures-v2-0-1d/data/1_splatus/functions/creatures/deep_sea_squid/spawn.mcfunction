


execute at @s if entity @s[predicate=1_splatus:in/biome/cold_ocean] run tag @s add creatures_in_ocean
execute at @s if entity @s[predicate=1_splatus:in/biome/deep_cold_ocean] run tag @s add creatures_in_ocean
execute at @s if entity @s[predicate=1_splatus:in/biome/ocean] run tag @s add creatures_in_ocean
execute at @s if entity @s[predicate=1_splatus:in/biome/deep_ocean] run tag @s add creatures_in_ocean

execute at @s if entity @s[predicate=1_splatus:in/biome/deep_ocean] run tag @s add creatures_in_ocean_deep
execute at @s if entity @s[predicate=1_splatus:in/biome/deep_cold_ocean] run tag @s add creatures_in_ocean_deep


# double chance really since these functions are attempted by both cod and salmon
execute if predicate 1_splatus:chance/1.5_percent if entity @s[tag=creatures_in_ocean] run tag @s add creatures_squid_spawned
execute if predicate 1_splatus:chance/3_percent if entity @s[tag=creatures_in_ocean,tag=creatures_in_ocean_deep] run tag @s add creatures_squid_spawned
execute if entity @s[tag=creatures_squid_spawned] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned a Deep Sea Squid]","color": "gray","italic":true}
execute if entity @s[tag=creatures_squid_spawned] positioned ~ ~2 ~ run function 1_splatus:creatures/deep_sea_squid/summon


execute run tag @s add creatures_spawnattempted
