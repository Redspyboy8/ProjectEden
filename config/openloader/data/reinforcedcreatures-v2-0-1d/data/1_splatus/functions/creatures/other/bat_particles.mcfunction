scoreboard players add @s creatures_time 1

effect give @s invisibility 10 1 true

#purple
execute if entity @s[tag=creatures_dust_1] unless score @s creatures_time matches 40.. run particle dust 0.271 0.224 0.486 1.25 ~ ~ ~ 0 0 0 0 1 force @a[distance=..48]
execute if entity @s[tag=creatures_dust_1] unless score @s creatures_time matches 60.. run particle dust 0.271 0.224 0.486 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..48]
execute if entity @s[tag=creatures_dust_1] unless score @s creatures_time matches 80.. run particle dust 0.271 0.224 0.486 .75 ~ ~ ~ 0 0 0 0 1 force @a[distance=..48]
execute if entity @s[tag=creatures_dust_1] run particle dust 0.271 0.224 0.486 .5 ~ ~ ~ 0 0 0 0 1 force @a[distance=..48]


#purple (phantom bow)
execute if entity @s[tag=creatures_dust_phantom_bow] unless score @s creatures_time matches 10.. run particle dust 0.271 0.224 0.486 1.25 ~ ~ ~ 0 0 0 0 1 force @a[distance=..48]
execute if entity @s[tag=creatures_dust_phantom_bow] unless score @s creatures_time matches 15.. run particle dust 0.271 0.224 0.486 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..48]
execute if entity @s[tag=creatures_dust_phantom_bow] unless score @s creatures_time matches 20.. run particle dust 0.271 0.224 0.486 .75 ~ ~ ~ 0 0 0 0 1 force @a[distance=..48]


execute if entity @s[tag=creatures_dust_phantom_bow] run effect give @e[distance=..2,type=!#1_splatus:creatures/misc,type=!bat] slowness 1 1 false
execute if entity @s[tag=creatures_dust_phantom_bow] as @e[distance=..1.5,type=!#1_splatus:creatures/misc,type=!bat] at @s run particle dust 0.271 0.224 0.486 1.5 ~ ~1 ~ .2 .4 .2 0 3 force @a[distance=..48]
execute if entity @s[tag=creatures_dust_phantom_bow] as @e[distance=..1.5,type=!#1_splatus:creatures/misc,type=!bat] run function 1_splatus:creatures/other/damage/entity_damage1
execute if entity @s[tag=creatures_dust_phantom_bow] if score @s creatures_time matches 28.. run tp @s ~ -400 ~
execute if entity @s[tag=creatures_dust_phantom_bow] if score @s creatures_time matches 28.. run kill @s

execute if score @s creatures_time matches 100.. run tp @s ~ -400 ~
execute if score @s creatures_time matches 100.. run kill @s

