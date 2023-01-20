

execute if score @s creatures_time matches 501 run data merge entity @s {NoAI:1b,Invulnerable:1b}
execute if score @s creatures_time matches 501 run execute as @e[distance=..3,type=skeleton,sort=nearest,limit=1,tag=creatures_stormrider_skeleton] run data merge entity @s {NoAI:1b,Invulnerable:1b}


execute if score @s creatures_time matches 501 run playsound minecraft:entity.wither.hurt hostile @a[distance=..40] ~ ~ ~ 2.0 .75
particle minecraft:large_smoke ~ ~.5 ~ 0 0 0 .2 10 force @a[distance=..64]
particle minecraft:squid_ink ~ ~.5 ~ 0 0 0 .2 2 force @a[distance=..64]
execute if predicate 1_splatus:chance/25_percent run playsound minecraft:entity.phantom.ambient hostile @a[distance=..40] ~ ~ ~ 2.0 .55


execute if score @s creatures_time matches 531.. run playsound minecraft:entity.wither.hurt hostile @a[distance=..40] ~ ~ ~ 2.0 .5
execute if score @s creatures_time matches 531.. run playsound minecraft:entity.phantom.death hostile @a[distance=..40] ~ ~ ~ 2.0 1
execute if score @s creatures_time matches 531.. run playsound minecraft:entity.skeleton.death hostile @a[distance=..40] ~ ~ ~ 2.0 1
execute if score @s creatures_time matches 531.. run kill @e[distance=..3,type=skeleton,sort=nearest,limit=1,tag=creatures_stormrider_skeleton]

execute if score @s creatures_time matches 531.. run function 1_splatus:creatures/other/commands/summon_dust_1
execute if score @s creatures_time matches 531.. run function 1_splatus:creatures/other/commands/summon_dust_1
execute if score @s creatures_time matches 531.. run function 1_splatus:creatures/other/commands/summon_dust_1
execute if score @s creatures_time matches 531.. run function 1_splatus:creatures/other/commands/summon_dust_1
execute if score @s creatures_time matches 531.. run function 1_splatus:creatures/other/commands/summon_dust_1
execute if score @s creatures_time matches 531.. run function 1_splatus:creatures/other/commands/summon_dust_1
execute if score @s creatures_time matches 531.. run function 1_splatus:creatures/other/commands/summon_dust_1
execute if score @s creatures_time matches 531.. run function 1_splatus:creatures/other/commands/summon_dust_1
execute if score @s creatures_time matches 531.. run function 1_splatus:creatures/other/commands/summon_dust_1

execute if score gamerule_doMobLoot creatures_data matches 1 if score @s creatures_time matches 531.. run summon minecraft:experience_orb ~ ~ ~ {Value:6,Motion:[0.1,0.25,-0.2]}
execute if score gamerule_doMobLoot creatures_data matches 1 if score @s creatures_time matches 531.. run summon minecraft:experience_orb ~ ~ ~ {Value:6,Motion:[-0.3,0.2,0.1]}
execute if score gamerule_doMobLoot creatures_data matches 1 if score @s creatures_time matches 531.. run summon minecraft:experience_orb ~ ~ ~ {Value:6,Motion:[0.1,0.2,-0.16]}
execute if score gamerule_doMobLoot creatures_data matches 1 if score @s creatures_time matches 531.. run summon minecraft:experience_orb ~ ~ ~ {Value:6,Motion:[-0.05,0.4,-0.12]}
execute if score gamerule_doMobLoot creatures_data matches 1 if score @s creatures_time matches 531.. run summon minecraft:experience_orb ~ ~ ~ {Value:6,Motion:[0.1,-0.05,0.12]}

execute if score @s creatures_time matches 531.. run kill @s
