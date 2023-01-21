


execute if predicate 1_splatus:chance/4_percent run tag @s add creatures_creeper_spawned
execute if entity @s[tag=creatures_creeper_spawned] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned a Confetti Creeper]","color": "gray","italic":true}
execute if entity @s[tag=creatures_creeper_spawned] run data merge entity @s {CustomName:'{"translate":"Confetti Creeper"}',Tags:["creatures_creeper"],Attributes:[{Name:"minecraft:generic.max_health",Base:320.0d}],Health:320f,DeathLootTable:"1_splatus:creatures/entity/confetti_creeper"}


execute run tag @s add creatures_spawnattempted
