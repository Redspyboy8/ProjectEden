execute as @s[scores={creatures_time=400}] at @s run data merge entity @s {Invulnerable:1b}
execute as @s[scores={creatures_time=400..500}] at @s run particle squid_ink ~ ~ ~ 0 0 0 .3 5 force
execute as @s[scores={creatures_time=400}] at @s run playsound minecraft:entity.glow_squid.death hostile @a[distance=..30] ~ ~ ~ 1 .5
execute as @s[scores={creatures_time=400}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 .5

execute as @s[scores={creatures_time=420}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 1.75
execute as @s[scores={creatures_time=424}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 1.75
execute as @s[scores={creatures_time=428}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 1.75
execute as @s[scores={creatures_time=432}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 1.75
execute as @s[scores={creatures_time=436}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 1.75
execute as @s[scores={creatures_time=440}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 1.75
execute as @s[scores={creatures_time=444}] at @s run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1 1.75

execute as @s[scores={creatures_time=444}] at @s run playsound minecraft:entity.glow_squid.death hostile @a[distance=..30] ~ ~ ~ 1 .5
execute as @s[scores={creatures_time=444}] at @s run particle glow_squid_ink ~ ~ ~ .3 .6 .3 .01 20 force

execute as @s[scores={creatures_time=444}] at @s if score gamerule_doMobLoot creatures_data matches 1 run summon minecraft:experience_orb ~ ~ ~ {Value:2,Motion:[0.1,0.25,-0.2]}
execute as @s[scores={creatures_time=444}] at @s if score gamerule_doMobLoot creatures_data matches 1 run summon minecraft:experience_orb ~ ~ ~ {Value:2,Motion:[-0.3,0.2,0.1]}
execute as @s[scores={creatures_time=444}] at @s if score gamerule_doMobLoot creatures_data matches 1 run summon minecraft:experience_orb ~ ~ ~ {Value:2,Motion:[0.1,0.2,-0.16]}
execute as @s[scores={creatures_time=444}] at @s if score gamerule_doMobLoot creatures_data matches 1 run summon minecraft:experience_orb ~ ~ ~ {Value:2,Motion:[-0.05,0.4,-0.12]}
execute as @s[scores={creatures_time=444}] at @s if score gamerule_doMobLoot creatures_data matches 1 run summon minecraft:experience_orb ~ ~ ~ {Value:2,Motion:[0.1,-0.05,0.12]}


execute as @s[scores={creatures_time=444..448}] at @s run kill @s
