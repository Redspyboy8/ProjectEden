execute at @s if block ~ ~-1 ~ #1_splatus:creatures/permeable run tp @s ~ ~-1 ~
execute at @s unless block ~ ~ ~ #1_splatus:creatures/permeable run tp @s ~ ~1 ~


execute at @s if block ~ ~-1 ~ #1_splatus:creatures/permeable run function 1_splatus:creatures/other/commands/teleport_loop
execute at @s unless block ~ ~ ~ #1_splatus:creatures/permeable run function 1_splatus:creatures/other/commands/teleport_loop
