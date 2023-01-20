execute if score @s creatures_time matches 207 run data merge entity @s {Invulnerable:0b}


execute at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..48] eyes 

execute if score @s creatures_time matches 204 run playsound minecraft:entity.player.swim hostile @a[distance=..25] ~ ~ ~ 1.5 .72
execute if score @s creatures_time matches 204 run playsound minecraft:entity.magma_cube.squish hostile @a[distance=..25] ~ ~ ~ 1.5 .5
execute if score @s creatures_time matches 204 run particle lava ~ ~1.25 ~ .8 .8 .8 .2 10 force @a[distance=..64]

#up
execute if score @s creatures_time matches 201..210 run tp @s ~ ~.5 ~ 
execute if score @s creatures_time matches 211..215 run tp @s ~ ~.25 ~ 

#tiny fireball uwu
execute if score @s creatures_time matches 214 positioned ~ ~1 ~ run function 1_splatus:creatures/lake_magma/summon_fireball
execute if score @s creatures_time matches 218 positioned ~ ~1 ~ run function 1_splatus:creatures/lake_magma/summon_fireball
execute if score @s creatures_time matches 222 positioned ~ ~1 ~ run function 1_splatus:creatures/lake_magma/summon_fireball


execute if score @s creatures_time matches 229 run playsound minecraft:entity.player.swim hostile @a[distance=..25] ~ ~ ~ 1.5 .72
execute if score @s creatures_time matches 229 run playsound minecraft:entity.magma_cube.squish hostile @a[distance=..25] ~ ~ ~ 1.5 .5
execute if score @s creatures_time matches 229 run particle lava ~ ~1.25 ~ .8 .8 .8 .2 10 force @a[distance=..64]

#down
execute if score @s creatures_time matches 216..225 run tp @s ~ ~-.125 ~ 
execute if score @s creatures_time matches 226..235 run tp @s ~ ~-.5 ~ 


execute if score @s creatures_time matches 232 run data merge entity @s {Invulnerable:1b}

execute if score @s creatures_time matches 235..399 run scoreboard players set @s creatures_time 30
