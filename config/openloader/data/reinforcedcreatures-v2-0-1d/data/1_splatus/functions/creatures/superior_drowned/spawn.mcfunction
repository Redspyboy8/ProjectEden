

execute if predicate 1_splatus:chance/5_percent run tag @s add creatures_superiordrowned_spawned
execute if entity @s[tag=creatures_superiordrowned_spawned] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned a Superior Drowned]","color": "gray","italic":true}
execute if entity @s[tag=creatures_superiordrowned_spawned] run data merge entity @s {Attributes:[{Name:"minecraft:generic.max_health",Base:35.0d}],Health:35f,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2186350}}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4849572,Name:'{"translate":"Superior Drowned Chestplate"}'}}},{id:"chainmail_helmet",Count:1b,tag:{display:{Name:'{"translate":"Superior Drowned Helmet"}'}}}],CustomName:'{"translate":"Superior Drowned"}',HandItems:[{id:"trident",Count:1b},{id:"minecraft:nautilus_shell",Count:1b}],HandDropChances:[0.5f,0.5f]}
execute if entity @s[tag=creatures_superiordrowned_spawned] run tag @s add creatures_superiordrowned

execute run tag @s add creatures_spawnattempted
