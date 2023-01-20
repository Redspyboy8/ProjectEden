
scoreboard players add @s creatures_count 1


execute at @s positioned ~ ~1 ~ run particle end_rod ^ ^ ^.5
execute at @s positioned ~ ~1 ~ run particle end_rod ^ ^ ^1
execute at @s positioned ~ ~1 ~ run particle end_rod ^ ^ ^1.5
execute at @s positioned ~ ~1 ~ run particle end_rod ^ ^ ^2
execute at @s positioned ~ ~1 ~ run particle end_rod ^ ^ ^2.5
execute at @s positioned ~ ~1 ~ run particle end_rod ^ ^ ^3
execute at @s positioned ~ ~1 ~ run particle end_rod ^ ^ ^3.5
execute at @s positioned ~ ~1 ~ run particle end_rod ^ ^ ^4
execute at @s positioned ~ ~1 ~ run particle end_rod ^ ^ ^4.5
execute at @s positioned ~ ~1 ~ run particle end_rod ^ ^ ^5



execute at @s run tp @s ~ ~ ~ ~2 ~


execute unless score @s creatures_count matches 180.. run function 1_splatus:creatures/other/commands/generate_circle
execute if score @s creatures_count matches 180.. run scoreboard players reset @s creatures_count

