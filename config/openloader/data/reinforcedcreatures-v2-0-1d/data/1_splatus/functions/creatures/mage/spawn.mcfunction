




execute if predicate 1_splatus:chance/4_percent run tag @s add creatures_mage_spawned
execute if entity @s[tag=creatures_mage_spawned] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned a Piglin Mage]","color": "gray","italic":true}
execute if entity @s[tag=creatures_mage_spawned] run tag @s add creatures_mage
execute if entity @s[tag=creatures_mage_spawned] run data merge entity @s {CustomName:'{"translate":"Piglin Mage"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3357339}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Enchantments:[{id:"unbreaking",lvl:1}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9066180}}},{}],HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"minecraft:fishing_rod",tag:{CustomModelData:27016},Count:1b},{}],IsBaby:0b,Attributes:[{Name:"minecraft:generic.max_health",Base:40.0d}],Health:40,ActiveEffects:[{Id:28,Amplifier:0,Duration:999999,ShowParticles:true}],IsImmuneToZombification:1b,DeathLootTable:"1_splatus:creatures/entity/piglin_mage"}
execute if entity @s[tag=creatures_mage_spawned] run tag @s add creatures_spawnattempted

