execute if entity @e[tag=creatures_randomizer_entity] run tellraw @s {"translate": "Already exists at 0, 100, 0","color": "red"}
execute unless entity @e[tag=creatures_randomizer_entity] run summon minecraft:area_effect_cloud 0.5 100 0.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_randomizer_entity"]}