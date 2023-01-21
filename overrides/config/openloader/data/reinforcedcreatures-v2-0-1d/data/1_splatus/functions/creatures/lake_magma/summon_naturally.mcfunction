execute unless entity @e[type=magma_cube,distance=..64,tag=creatures_lake_magma] run tellraw @a[tag=creatures_log] {"translate": "[Reinforced Creatures Log: Spawned a Lake Magma]","color": "gray","italic":true}
execute unless entity @e[type=magma_cube,distance=..64,tag=creatures_lake_magma] run summon magma_cube ~ ~ ~ {Size:4,Tags:["creatures_lake_magma"],Attributes:[{Name:"minecraft:generic.max_health",Base:200.0}],Health:200f,NoAI:1b}
scoreboard players set @e[type=magma_cube,distance=..1,tag=creatures_lake_magma] creatures_time 60
execute as @e[type=magma_cube,distance=..1,tag=creatures_lake_magma] at @s run tp @s ~ ~-2 ~
kill @s