execute if predicate 1_splatus:chance/50_percent if entity @s[predicate=1_splatus:in/structure/stronghold] run tag @s add creatures_armorstand_spawned
execute if entity @s[tag=creatures_armorstand_spawned] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned a Sentient Armor Stand]","color": "gray","italic":true}
execute if entity @s[tag=creatures_armorstand_spawned] align zx run summon armor_stand ~.5 ~ ~.5 {NoGravity:0b,CustomName:'{"translate":"Armor Stand"}',Invulnerable:1b}
execute if entity @s[tag=creatures_armorstand_spawned] as @e[distance=..1,type=armor_stand] at @s run tag @s add creatures_armorstand

tag @s add creatures_spawnattempted
