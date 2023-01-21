
execute if score @s creatures_time matches 501 run playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..32] ~ ~ ~ 1.5 1.25
execute if score @s creatures_time matches 501 run playsound minecraft:block.fire.extinguish hostile @a[distance=..32] ~ ~ ~ 1.5 .5


#effect give @s instant_damage
particle minecraft:flame ~ ~1.5 ~ .5 .5 .5 .4 10 force @a[distance=..64]
particle minecraft:large_smoke ~ ~1.5 ~ .8 .8 .8 .1 100 force @a[distance=..64]
particle lava ~ ~1.5 ~ .5 .5 .5 .3 20 force @a[distance=..64]

data merge entity @s {NoAI:0b}

execute if score gamerule_doMobLoot creatures_data matches 1 run summon experience_orb ~ ~ ~ {Tags:["creatures_experience_orb"],Invulnerable:1b,Value:2,Motion:[0.02,0.3,0.27]}
execute if score gamerule_doMobLoot creatures_data matches 1 run summon experience_orb ~ ~ ~ {Tags:["creatures_experience_orb"],Invulnerable:1b,Value:2,Motion:[0.1,0.25,-0.2]}
execute if score gamerule_doMobLoot creatures_data matches 1 run summon experience_orb ~ ~ ~ {Tags:["creatures_experience_orb"],Invulnerable:1b,Value:2,Motion:[-0.3,0.2,-0.08]}
execute if score gamerule_doMobLoot creatures_data matches 1 run summon experience_orb ~ ~ ~ {Tags:["creatures_experience_orb"],Invulnerable:1b,Value:2,Motion:[0.05,0.3,-0.08]}
execute if score gamerule_doMobLoot creatures_data matches 1 run summon experience_orb ~ ~ ~ {Tags:["creatures_experience_orb"],Invulnerable:1b,Value:2,Motion:[0.3,0.4,0.2]}
execute if score gamerule_doMobLoot creatures_data matches 1 run summon experience_orb ~ ~ ~ {Tags:["creatures_experience_orb"],Invulnerable:1b,Value:2,Motion:[0.1,0.7,-0.3]}

execute if score @s creatures_time matches 501.. run particle explosion_emitter ~ ~1.5 ~
execute if score @s creatures_time matches 501.. run playsound minecraft:entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 2.5 1
execute if score @s creatures_time matches 501.. run tp @s ~ -400 ~
execute if score @s creatures_time matches 501.. run kill @s[type=magma_cube]