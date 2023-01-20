execute if predicate 1_splatus:chance/2_percent run tag @s add creatures_wingedpiglin_spawned
execute if entity @s[tag=creatures_wingedpiglin_spawned,tag=!creatures_mage_spawned] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned a Winged Piglin (Crossbow)]","color": "gray","italic":true}
execute if entity @s[tag=creatures_wingedpiglin_spawned,tag=!creatures_mage_spawned] run data merge entity @s {CustomName:'{"translate":"Winged Piglin"}',FallFlying:1b,NoGravity:0b,ArmorItems:[{},{},{id:"elytra",Count:1b},{}],Rotation:[130,-90],IsImmuneToZombification:1b,Tags:["creatures_winged_piglin"],HandItems:[{id:"crossbow",Count:1b},{}],HandDropChances:[0.25f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:30.0d}],Health:30f}

execute if predicate 1_splatus:chance/2_percent run tag @s add creatures_wingedpiglin_spawned
execute if entity @s[tag=creatures_wingedpiglin_spawned,tag=!creatures_mage_spawned] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned a Winged Piglin (Sword)]","color": "gray","italic":true}
execute if entity @s[tag=creatures_wingedpiglin_spawned,tag=!creatures_mage_spawned] run data merge entity @s {CustomName:'{"translate":"Winged Piglin"}',FallFlying:1b,NoGravity:0b,ArmorItems:[{},{},{id:"elytra",Count:1b},{}],Rotation:[130,-90],IsImmuneToZombification:1b,Tags:["creatures_winged_piglin"],HandItems:[{id:"golden_sword",Count:1b},{}],HandDropChances:[0.25f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"minecraft:generic.max_health",Base:30.0d}],Health:30f}

execute run tag @s add creatures_spawnattempted
