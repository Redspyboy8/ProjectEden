#player freeze
execute as @a[scores={creatures_time=1..10}] at @s run scoreboard players add @s creatures_time 1
execute as @a[scores={creatures_time=1..10}] at @s run tp @s @s
execute as @a[scores={creatures_time=11}] at @s run scoreboard players reset @s creatures_time