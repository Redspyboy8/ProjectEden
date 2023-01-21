
scoreboard players add @s creatures_time 1
execute if block ~ ~0.2 ~ #1_splatus:creatures/permeable run tp @s ^ ^-.5 ^.5


execute unless score creatures_deathmessages creatures_count matches 0 unless block ~ ~0.2 ~ #1_splatus:creatures/permeable if entity @s[tag=!creatures_winged_piglin_swords_inGround] positioned ~ ~1 ~ as @e[distance=..1.35,type=!#1_splatus:creatures/misc] run gamerule showDeathMessages false
execute unless score creatures_deathmessages creatures_count matches 0 unless block ~ ~0.2 ~ #1_splatus:creatures/permeable if entity @s[tag=!creatures_winged_piglin_swords_inGround] positioned ~ ~1 ~ as @e[distance=..1.35,type=!#1_splatus:creatures/misc] run schedule function 1_splatus:creatures/other/deaths_messages/golden_swords 2t
execute unless block ~ ~0.2 ~ #1_splatus:creatures/permeable if entity @s[tag=!creatures_winged_piglin_swords_inGround] positioned ~ ~1 ~ as @e[distance=..1.35,type=!#1_splatus:creatures/misc] run function 1_splatus:creatures/other/damage/entity_damage3
execute unless block ~ ~0.2 ~ #1_splatus:creatures/permeable if entity @s[tag=!creatures_winged_piglin_swords_inGround] run particle block gold_block ~ ~1 ~ .3 .3 .3 .2 5 normal
execute unless block ~ ~0.2 ~ #1_splatus:creatures/permeable if entity @s[tag=!creatures_winged_piglin_swords_inGround] run playsound minecraft:item.trident.hit_ground hostile @a[distance=..20] ~ ~ ~ 1.15 1.5
execute unless block ~ ~0.2 ~ #1_splatus:creatures/permeable run tag @s add creatures_winged_piglin_swords_inGround



execute if score @s creatures_time matches 200.. run particle block gold_block ~ ~1 ~ .3 .3 .3 .2 5 normal
execute if score @s creatures_time matches 200.. run kill @s
