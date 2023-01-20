



execute if predicate 1_splatus:chance/15_percent run tag @s add creatures_superiorstray_spawned
execute if entity @s[tag=creatures_superiorstray_spawned] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned a Superior Stray]","color": "gray","italic":true}
execute if entity @s[tag=creatures_superiorstray_spawned] run data merge entity @s {CustomName:'{"translate":"Superior Stray"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:5269194}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3506870}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8243928}}},{id:"chainmail_helmet",Count:1b,tag:{CustomModelData:27001,display:{Name:'{"translate":"Superior Stray Helmet","italic":false,"color": "aqua"}',Lore:['{"translate":"Recovery I","color":"gray","italic":false}']},SuperiorStrayHelmet:1}}],Attributes:[{Name:"minecraft:generic.max_health",Base:30.0d}],Health:30f,HandItems:[{id:"bow",Count:1b,tag:{CustomModelData:27015}}],DeathLootTable:"1_splatus:creatures/entity/superior_stray",ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}
execute if entity @s[tag=creatures_superiorstray_spawned] run tag @s add creatures_superiorstray

tag @s add creatures_spawnattempted
