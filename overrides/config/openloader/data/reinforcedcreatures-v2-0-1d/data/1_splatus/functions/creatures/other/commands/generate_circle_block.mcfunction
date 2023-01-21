
scoreboard players add @s creatures_count 1


#execute at @s positioned ~ ~1 ~ run setblock ^ ^ ^0.5 red_concrete
execute at @s positioned ~ ~1 ~ run setblock ^ ^ ^1.0 red_concrete
#execute at @s positioned ~ ~1 ~ run setblock ^ ^ ^1.5 red_concrete
execute at @s positioned ~ ~1 ~ run setblock ^ ^ ^2.0 red_concrete
#execute at @s positioned ~ ~1 ~ run setblock ^ ^ ^2.5 red_concrete
execute at @s positioned ~ ~1 ~ run setblock ^ ^ ^3.0 red_concrete
#execute at @s positioned ~ ~1 ~ run setblock ^ ^ ^3.5 red_concrete
execute at @s positioned ~ ~1 ~ run setblock ^ ^ ^4.0 red_concrete
#execute at @s positioned ~ ~1 ~ run setblock ^ ^ ^4.5 red_concrete
execute at @s positioned ~ ~1 ~ run setblock ^ ^ ^5.0 red_concrete



execute at @s run tp @s ~ ~ ~ ~10 ~


execute unless score @s creatures_count matches 36.. run function 1_splatus:creatures/other/commands/generate_circle_block
execute if score @s creatures_count matches 36.. run scoreboard players reset @s creatures_count

