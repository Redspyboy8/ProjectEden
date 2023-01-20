


execute at @s if entity @s[predicate=1_splatus:in/biome/warn_ocean] run tag @s add creatures_in_ocean_warm
execute at @s if entity @s[predicate=1_splatus:in/biome/deep_lukewarm_ocean] run tag @s add creatures_in_ocean
execute at @s if entity @s[predicate=1_splatus:in/biome/lukewarm_ocean] run tag @s add creatures_in_ocean


execute if predicate 1_splatus:chance/4_percent if entity @s[tag=creatures_in_ocean] run tag @s add creatures_jellyfish_spawned
execute if predicate 1_splatus:chance/8_percent if entity @s[tag=creatures_in_ocean_warm] run tag @s add creatures_jellyfish_spawned

execute if entity @s[tag=creatures_jellyfish_spawned] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned a Jellyfish]","color": "gray","italic":true}
execute if entity @s[tag=creatures_jellyfish_spawned] positioned ~ ~2 ~ run function 1_splatus:creatures/jellyfish/summon


execute run tag @s add creatures_spawnattempted
