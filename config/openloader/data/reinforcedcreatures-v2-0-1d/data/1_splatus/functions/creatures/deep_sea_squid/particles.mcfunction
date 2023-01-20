#player
scoreboard players add @s creatures_player_inked 1
particle squid_ink ~ ~1 ~ .4 .6 .4 .05 2 force @a[distance=..64]
execute if score @s creatures_player_inked matches 40.. run scoreboard players reset @s creatures_player_inked