#death
execute as @s[tag=creatures_jellyfish,scores={creatures_time=400}] at @s run data merge entity @s {Invulnerable:1b}
execute as @s[tag=creatures_jellyfish,scores={creatures_time=400..}] at @s run particle electric_spark ~ ~ ~ 0 0 0 2 20 force @a[distance=..48]
execute as @s[tag=creatures_jellyfish,scores={creatures_time=400..}] at @s run particle end_rod ~ ~ ~ 0 0 0 .3 1 force @a[distance=..48]
execute as @s[tag=creatures_jellyfish,scores={creatures_time=400}] at @s run playsound minecraft:block.amethyst_block.chime hostile @a[distance=..25] ~ ~ ~ .75 .75
execute as @s[tag=creatures_jellyfish,scores={creatures_time=400}] at @s run playsound minecraft:entity.glow_squid.death hostile @a[distance=..30] ~ ~ ~ 1 1
execute as @s[tag=creatures_jellyfish,scores={creatures_time=400}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 .5

execute as @s[tag=creatures_jellyfish,scores={creatures_time=420}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 2
execute as @s[tag=creatures_jellyfish,scores={creatures_time=424}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 2
execute as @s[tag=creatures_jellyfish,scores={creatures_time=428}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 2
execute as @s[tag=creatures_jellyfish,scores={creatures_time=432}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 2
execute as @s[tag=creatures_jellyfish,scores={creatures_time=436}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 2
execute as @s[tag=creatures_jellyfish,scores={creatures_time=440}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 2
execute as @s[tag=creatures_jellyfish,scores={creatures_time=444}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 2

execute as @s[tag=creatures_jellyfish,scores={creatures_time=444}] at @s run playsound minecraft:block.amethyst_block.chime hostile @a[distance=..25] ~ ~ ~ 1 1.1
execute as @s[tag=creatures_jellyfish,scores={creatures_time=444}] at @s run playsound minecraft:block.amethyst_block.chime hostile @a[distance=..25] ~ ~ ~ 1 .5
execute as @s[tag=creatures_jellyfish,scores={creatures_time=444}] at @s run playsound minecraft:entity.glow_squid.death hostile @a[distance=..30] ~ ~ ~ 1 1
execute as @s[tag=creatures_jellyfish,scores={creatures_time=444}] at @s run particle minecraft:block magenta_wool ~ ~1 ~ .3 .5 .3 .2 100 force
execute as @s[tag=creatures_jellyfish,scores={creatures_time=444}] at @s run particle glow_squid_ink ~ ~ ~ .3 .6 .3 .01 5 force @a[distance=..48]

execute if score gamerule_doMobLoot creatures_data matches 1 as @s[tag=creatures_jellyfish,scores={creatures_time=444}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1,Motion:[0.1,0.25,-0.2]}
execute if score gamerule_doMobLoot creatures_data matches 1 as @s[tag=creatures_jellyfish,scores={creatures_time=444}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1,Motion:[-0.3,0.2,0.1]}
execute if score gamerule_doMobLoot creatures_data matches 1 as @s[tag=creatures_jellyfish,scores={creatures_time=444}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1,Motion:[0.1,0.2,-0.16]}
execute if score gamerule_doMobLoot creatures_data matches 1 as @s[tag=creatures_jellyfish,scores={creatures_time=444}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1,Motion:[-0.05,0.4,-0.12]}
execute if score gamerule_doMobLoot creatures_data matches 1 as @s[tag=creatures_jellyfish,scores={creatures_time=444}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:1,Motion:[0.1,-0.05,0.12]}


execute as @s[tag=creatures_jellyfish,scores={creatures_time=444..}] at @s run kill @s
