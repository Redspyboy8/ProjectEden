



execute if predicate 1_splatus:chance/15_percent run tag @s add creatures_superiorhusk_spawned
execute if entity @s[tag=creatures_superiorhusk_spawned] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned a Superior Husk]","color": "gray","italic":true}
execute if entity @s[tag=creatures_superiorhusk_spawned] run data merge entity @s {CustomName:'{"translate":"Superior Husk"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7217441}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:9850663}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12159280}}},{id:"chainmail_helmet",Count:1b}],Attributes:[{Name:"minecraft:generic.max_health",Base:40.0d}],Health:40,HandItems:[{id:"stone_sword",Count:1b,tag:{}}],DeathLootTable:"1_splatus:creatures/entity/superior_husk",HandDropChances:[0.0f,0.0f]}
execute if entity @s[tag=creatures_superiorhusk_spawned] run tag @s add creatures_superiorhusk


tag @s add creatures_spawnattempted
