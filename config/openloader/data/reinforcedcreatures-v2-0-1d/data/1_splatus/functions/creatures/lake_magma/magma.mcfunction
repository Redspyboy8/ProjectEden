particle flame ~ ~1.25 ~ .8 .8 .8 .04 2 force @a[distance=..64]


#health
execute store result score @s creatures_health run data get entity @s Health
execute if score @s creatures_health matches ..179 run function 1_splatus:creatures/lake_magma/death_animation
execute if score @s creatures_health matches ..179 if score @s creatures_time matches ..499 run scoreboard players set @s creatures_time 500


scoreboard players add @s creatures_time 1

execute if score @s creatures_time matches 60..61 unless entity @p[distance=..48] run scoreboard players set @s creatures_time 60


#look around
execute if score @s creatures_time matches 1..100 if predicate 1_splatus:chance/2_percent at @s run tp @s ~ ~ ~ ~45 ~
execute if score @s creatures_time matches 1..100 if predicate 1_splatus:chance/2_percent at @s run tp @s ~ ~ ~ ~-45 ~
execute if score @s creatures_time matches 1..100 if predicate 1_splatus:chance/2_percent at @s run tp @s ~ ~ ~ ~90 ~
execute if score @s creatures_time matches 1..100 if predicate 1_splatus:chance/2_percent at @s run tp @s ~ ~ ~ ~-90 ~

execute if score @s creatures_time matches 50 if predicate 1_splatus:chance/25_percent at @s run scoreboard players remove @s creatures_time 14
execute if score @s creatures_time matches 50 if predicate 1_splatus:chance/25_percent at @s run scoreboard players add @s creatures_time 14
execute if score @s creatures_time matches 50 if predicate 1_splatus:chance/25_percent at @s run scoreboard players add @s creatures_time 14

#down into the lava
execute if score @s creatures_time matches 14 run playsound minecraft:entity.player.swim hostile @a[distance=..25] ~ ~ ~ 1.5 .72
execute if score @s creatures_time matches 14 run playsound minecraft:entity.magma_cube.squish hostile @a[distance=..25] ~ ~ ~ 1.5 .5
execute if score @s creatures_time matches 14 run particle lava ~ ~1.25 ~ .8 .8 .8 .2 10 force @a[distance=..64]

execute if score @s creatures_time matches 1..6 run tp @s ~ ~-.05 ~ 
execute if score @s creatures_time matches 7..10 run tp @s ~ ~-.25 ~ 
execute if score @s creatures_time matches 11..20 run tp @s ~ ~-.05 ~ 


execute if score @s creatures_time matches 10..88 run data merge entity @s {Invulnerable:1b}


#spring
execute if entity @p[distance=..40,gamemode=!creative,gamemode=!spectator] if score @s creatures_time matches 80 if predicate 1_splatus:chance/50_percent run scoreboard players set @s creatures_time 200
execute if score @s creatures_time matches 200.. run function 1_splatus:creatures/lake_magma/jump


#up out the lava
execute if score @s creatures_time matches 88 run data merge entity @s {Invulnerable:0b}
execute if score @s creatures_time matches 87 run playsound minecraft:entity.magma_cube.squish hostile @a[distance=..25] ~ ~ ~ 1.5 .5
execute if score @s creatures_time matches 87 run playsound minecraft:entity.player.swim hostile @a[distance=..25] ~ ~ ~ 1.5 .72
execute if score @s creatures_time matches 87 run particle lava ~ ~1.25 ~ .8 .8 .8 .2 10 force @a[distance=..64]

execute if score @s creatures_time matches 81..86 run tp @s ~ ~.05 ~ 
execute if score @s creatures_time matches 87..90 run tp @s ~ ~.25 ~ 
execute if score @s creatures_time matches 91..99 run tp @s ~ ~.05 ~ 


execute if score @s creatures_time matches 100..199 run scoreboard players set @s creatures_time 0

