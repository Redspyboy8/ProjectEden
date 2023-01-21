



execute if predicate 1_splatus:chance/2_percent run tag @s add creatures_slimezombie_spawned
execute if entity @s[tag=creatures_slimezombie_spawned] run tag @s add creatures_zombie
execute if entity @s[tag=creatures_slimezombie_spawned] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned a Slime Zombie]","color": "gray","italic":true}
execute if entity @s[tag=creatures_slimezombie_spawned] run data merge entity @s {Attributes:[{Name:"minecraft:generic.max_health",Base:500.0d}],Health:500f,DeathLootTable:"1_splatus:creatures/entity/slime_zombie"}




