




execute if predicate 1_splatus:chance/10_percent run tag @s add creatures_firecracker_spawned
execute if entity @s[tag=creatures_firecracker_spawned] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned a Firecracker Pillager]","color": "gray","italic":true}
execute if entity @s[tag=creatures_firecracker_spawned] run data merge entity @s {CustomName:'{"translate":"Firecracker"}',HandItems:[{id:"minecraft:crossbow",Count:1b},{id:"minecraft:firework_rocket",Count:64,tag:{CreaturesFirecrackerFirework:1}}]}
execute if entity @s[tag=creatures_firecracker_spawned] run tag @s add creatures_firecracker

execute run tag @s add creatures_spawnattempted
