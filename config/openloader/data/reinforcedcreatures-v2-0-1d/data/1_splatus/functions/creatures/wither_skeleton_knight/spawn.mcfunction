





execute if predicate 1_splatus:chance/10_percent run tag @s add creatures_wither_skeleton_knight_spawned
execute if entity @s[tag=creatures_wither_skeleton_knight_spawned] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned a Wither Skeleton Knight]","color": "gray","italic":true}
execute if entity @s[tag=creatures_wither_skeleton_knight_spawned] run data merge entity @s {CustomName:'{"translate":"Wither Skeleton Knight"}',ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{display:{color:5269194}}},{id:"minecraft:iron_leggings",Count:1b,tag:{display:{color:3506870}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{display:{color:8243928}}},{id:"netherite_helmet",Count:1b}],Attributes:[{Name:"minecraft:generic.max_health",Base:25.0d}],Health:25f,HandItems:[{id:"stone_sword",Count:1b},{id:"shield",Count:1b}],DeathLootTable:"1_splatus:creatures/entity/wither_skeleton_knight",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[1.0f,1.0f]}
execute if entity @s[tag=creatures_wither_skeleton_knight_spawned] run tag @s add creatures_wither_skeleton_knight

execute run tag @s add creatures_spawnattempted
