#execute run particle firework ~ ~ ~ 0 0 0 .01 1 force @a[distance=..64]

scoreboard players add @s creatures_time 1
execute if score @s creatures_time matches 1 run function 1_splatus:creatures/other/commands/teleport_confetti
execute if score @s creatures_time matches 1 run data merge entity @s {NoAI:1b}

#tp @s ~ ~.05 ~

execute if predicate 1_splatus:chance/2_percent positioned ~ ~-2 ~ run function 1_splatus:creatures/other/commands/firework_aqua
execute if predicate 1_splatus:chance/2_percent positioned ~ ~-2 ~ run function 1_splatus:creatures/other/commands/firework_red
execute if predicate 1_splatus:chance/2_percent positioned ~ ~-2 ~ run function 1_splatus:creatures/other/commands/firework_blue
execute if predicate 1_splatus:chance/2_percent positioned ~ ~-2 ~ run function 1_splatus:creatures/other/commands/firework_magenta
execute if predicate 1_splatus:chance/2_percent positioned ~ ~-2 ~ run function 1_splatus:creatures/other/commands/firework_yellow
effect give @s invisibility 10 1 true