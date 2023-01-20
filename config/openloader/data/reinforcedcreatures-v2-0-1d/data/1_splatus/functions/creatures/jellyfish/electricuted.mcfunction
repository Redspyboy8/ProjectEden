

particle minecraft:electric_spark ~ ~1 ~ .3 .3 .3 .75 10 force

execute if score @s creatures_player_electricuted matches 1 unless score creatures_deathmessages creatures_count matches 0 run gamerule showDeathMessages false
execute if score @s creatures_player_electricuted matches 1 run particle minecraft:end_rod ~ ~1 ~ .3 .3 .3 .3 5 force @a[distance=..64]
execute if score @s creatures_player_electricuted matches 1 run playsound minecraft:entity.zombie_villager.cure hostile @a[distance=..64] ~ ~ ~ 1 2
execute if score @s creatures_player_electricuted matches 1 run function 1_splatus:creatures/other/damage/entity_damage3
execute if score @s creatures_player_electricuted matches 1 run scoreboard players set @s creatures_player_frozen 193

#custom death message
execute unless score creatures_deathmessages creatures_count matches 0 if score @s creatures_player_electricuted matches 1 run schedule function 1_splatus:creatures/other/deaths_messages/electricity 2t

scoreboard players add @s creatures_player_electricuted 1

execute if score @s creatures_player_electricuted matches 20.. run scoreboard players reset @s creatures_player_electricuted


