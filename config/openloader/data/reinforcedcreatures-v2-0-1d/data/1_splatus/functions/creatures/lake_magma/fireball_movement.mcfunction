scoreboard players add @s creatures_time2 1


execute if score @s creatures_time matches 1..90 if score @s creatures_time2 matches 1 run playsound minecraft:block.lava.pop hostile @a[distance=..16] ~ ~ ~ 1 1.05
execute if score @s creatures_time matches 1..90 if score @s creatures_time2 matches 1 run particle lava ~ ~ ~ 0 0 0 .2 3 normal

execute if score @s creatures_time matches 1..40 if score @s creatures_time2 matches 1..4 run tp @s ~ ~.45 ~
execute if score @s creatures_time matches 1..40 if score @s creatures_time2 matches 5..10 run tp @s ~ ~.1 ~
execute if score @s creatures_time matches 1..40 if score @s creatures_time2 matches 11..15 run tp @s ~ ~ ~

execute if score @s creatures_time matches 1..40 if score @s creatures_time2 matches 16..20 run tp @s ~ ~-.4 ~
execute if score @s creatures_time matches 1..40 if score @s creatures_time2 matches 21..28 run tp @s ~ ~-.8 ~
execute if score @s creatures_time matches 1..40 if score @s creatures_time2 matches 29..45 run tp @s ~ ~-1 ~
execute if score @s creatures_time matches 1..40 if score @s creatures_time2 matches 46.. run tp @s ~ ~-1 ~






execute if score @s creatures_time matches 41..90 if score @s creatures_time2 matches 1..4 run tp @s ~ ~.225 ~
execute if score @s creatures_time matches 41..90 if score @s creatures_time2 matches 5..10 run tp @s ~ ~.05 ~
execute if score @s creatures_time matches 41..90 if score @s creatures_time2 matches 11..15 run tp @s ~ ~ ~

execute if score @s creatures_time matches 41.. if score @s creatures_time2 matches 16..20 run tp @s ~ ~-.4 ~
execute if score @s creatures_time matches 41.. if score @s creatures_time2 matches 21..28 run tp @s ~ ~-.8 ~
execute if score @s creatures_time matches 41.. if score @s creatures_time2 matches 29..45 run tp @s ~ ~-1 ~
execute if score @s creatures_time matches 41.. if score @s creatures_time2 matches 46.. run tp @s ~ ~-1 ~




