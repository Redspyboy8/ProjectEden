execute unless score creatures_deathmessages creatures_count matches 0 run gamerule showDeathMessages false

playsound minecraft:block.fire.extinguish hostile @a[distance=..20] ~ ~ ~ 1.25 1.5
execute at @e[distance=..2.25,type=!#1_splatus:creatures/misc] run particle large_smoke ~ ~1 ~ .3 .3 .3 .05 10 force @a[distance=..64]

# summon fires
execute at @e[distance=..2.25,type=!#1_splatus:creatures/misc] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_fire_area"]}
#execute at @e[distance=..2.25,type=!#1_splatus:creatures/misc] run summon minecraft:area_effect_cloud ~-1 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_fire_area"]}
#execute at @e[distance=..2.25,type=!#1_splatus:creatures/misc] run summon minecraft:area_effect_cloud ~1 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_fire_area"]}
#execute at @e[distance=..2.25,type=!#1_splatus:creatures/misc] run summon minecraft:area_effect_cloud ~ ~ ~-1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_fire_area"]}
#execute at @e[distance=..2.25,type=!#1_splatus:creatures/misc] run summon minecraft:area_effect_cloud ~ ~ ~1 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_fire_area"]}

#damage
execute as @e[distance=..2.25,type=!#1_splatus:creatures/misc] run function 1_splatus:creatures/other/damage/entity_damage3

#custom death message
execute unless score creatures_deathmessages creatures_count matches 0 run schedule function 1_splatus:creatures/other/deaths_messages/lake_magma_fireball 2t
kill @s