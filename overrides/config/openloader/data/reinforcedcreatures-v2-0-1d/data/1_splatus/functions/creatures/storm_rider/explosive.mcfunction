particle dust 0.565 0.502 0.706 1.5 ~ ~ ~ .3 .3 .3 0 1 force @a[distance=..32]
particle electric_spark ~ ~ ~ .3 .3 .3 .8 3 force @a[distance=..32]
particle large_smoke


scoreboard players add @s creatures_time 1

execute if score @s creatures_time matches 30.. run particle end_rod ~ ~ ~ 0 0 0 .2 1 force @a[distance=..64]
execute if score @s creatures_time matches 50.. run function 1_splatus:creatures/storm_rider/explosive_hit

#execute if entity @p[distance=..2,gamemode=!creative,gamemode=!spectator] run function 1_splatus:creatures/storm_rider/pellets_hit
#execute unless block ~ ~-0.01 ~ #1_splatus:creatures/permeable run function 1_splatus:creatures/storm_rider/pellets_hit