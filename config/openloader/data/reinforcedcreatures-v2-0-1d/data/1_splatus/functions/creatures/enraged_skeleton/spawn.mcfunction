

execute if predicate 1_splatus:chance/2_percent run tag @s add creatures_insaneskeleton_spawned
execute if entity @s[tag=creatures_insaneskeleton_spawned] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned an Enraged Skeleton]","color": "gray","italic":true}
execute if entity @s[tag=creatures_insaneskeleton_spawned] run tag @s add creatures_skeleton
execute if entity @s[tag=creatures_insaneskeleton_spawned] run data merge entity @s {CustomName:'{"translate":"Enraged Skeleton"}'}


tag @s add creatures_spawnattempted
