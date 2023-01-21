summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_lake_magma_fireball"]}
playsound minecraft:entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1.5 1.5
particle lava ~ ~ ~ .3 .3 .3 .2 15 force @a[distance=..64]
particle large_smoke ~ ~ ~ .3 .3 .3 .3 10 force @a[distance=..64]
scoreboard players set @e[distance=..2,type=area_effect_cloud,tag=creatures_lake_magma_fireball] creatures_time2 7