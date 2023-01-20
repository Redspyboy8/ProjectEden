scoreboard players add @s creatures_player_frozen 1

execute at @s run tp @s @s

execute unless score @s creatures_player_electricuted matches 1.. run particle dust 0.769 0.855 0.914 2 ~ ~1 ~ .3 .5 .3 .2 5 force @a[distance=..32]


effect give @s[type=!player] slowness 1 10 true


#execute unless score @s creatures_player_frozen matches 200.. run data merge entity @s {NoAI:1b}
#execute if score @s creatures_player_frozen matches 200.. run data merge entity @s {NoAI:0b}

execute if score @s creatures_player_frozen matches 200.. run effect clear @s[type=!player] slowness

execute if score @s creatures_player_frozen matches 200.. run scoreboard players reset @s creatures_player_frozen


