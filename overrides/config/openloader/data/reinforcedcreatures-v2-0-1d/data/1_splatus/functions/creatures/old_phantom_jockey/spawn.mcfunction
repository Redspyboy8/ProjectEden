


execute if predicate 1_splatus:chance/10_percent run tag @s add creatures_phantomjockey_spawned
execute if entity @s[tag=creatures_phantomjockey_spawned] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned a Phantom Jockey]","color": "gray","italic":true}
execute if entity @s[tag=creatures_phantomjockey_spawned] run summon phantom ~ ~ ~ {Passengers:[{id:"skeleton",HandItems:[{Count:1,id:"bow",tag:{Enchantments:[{id:"unbreaking",lvl:1}]}},{}],ArmorItems:[{},{},{},{Count:1,id:"iron_helmet",tag:{Enchantments:[{id:"protection",lvl:1}]}}],HandDropChances:[0.2f,0.0f],ActiveEffects:[{Id:28,Amplifier:0,Duration:999999,ShowParticles:true},{Id:2,Amplifier:0,Duration:999999,ShowParticles:false}]}],Tags:["creatures_phantomjockey"],CustomName:'{"translate":"Phantom Jockey"}'}


execute run tag @s add creatures_spawnattempted
