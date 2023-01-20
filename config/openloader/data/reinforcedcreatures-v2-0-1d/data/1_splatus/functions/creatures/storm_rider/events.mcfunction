particle dust_color_transition 0.878 0.298 0.878 1.5 0.137 0.278 0.729 ~ ~ ~ .4 .1 .4 1 3 force @a[distance=..48]
particle dust 0.396 0.29 0.875 1 ~ ~ ~ .4 .1 .4 3 1 force @a[distance=..48]
particle ash ~ ~ ~ .4 .1 .4 .2 10 normal





execute if score @s creatures_time matches ..499 if score @s creatures_health matches ..175 run scoreboard players set @s creatures_time 500
execute if score @s creatures_time matches 500.. run function 1_splatus:creatures/storm_rider/death_animation

execute store result score @s creatures_health run data get entity @s Health

scoreboard players add @s creatures_time 1
execute if score @s creatures_time matches 100..220 run scoreboard players set @s creatures_time 0





#execute if score @s creatures_time matches 60 if predicate 1_splatus:chance/33_percent run scoreboard players set @s creatures_time 500




execute if score count3 creatures_count matches 0 if entity @p[distance=..64,gamemode=!creative,gamemode=!spectator] if score @s creatures_time matches 1..100 if predicate 1_splatus:chance/1_percent run summon armor_stand ~ ~ ~ {Tags:["creatures_storm_rider_explosive"],Invisible:1b,Invulnerable:1b,Motion:[-0.76,0.27,0.01]}
execute if score count3 creatures_count matches 0 if entity @p[distance=..64,gamemode=!creative,gamemode=!spectator] if score @s creatures_time matches 1..100 if predicate 1_splatus:chance/1_percent run summon armor_stand ~ ~ ~ {Tags:["creatures_storm_rider_explosive"],Invisible:1b,Invulnerable:1b,Motion:[0.77,0.32,0.0]}
execute if score count3 creatures_count matches 0 if entity @p[distance=..64,gamemode=!creative,gamemode=!spectator] if score @s creatures_time matches 1..100 if predicate 1_splatus:chance/1_percent run summon armor_stand ~ ~ ~ {Tags:["creatures_storm_rider_explosive"],Invisible:1b,Invulnerable:1b,Motion:[0.0,0.25,0.85]}
execute if score count3 creatures_count matches 0 if entity @p[distance=..64,gamemode=!creative,gamemode=!spectator] if score @s creatures_time matches 1..100 if predicate 1_splatus:chance/1_percent run summon armor_stand ~ ~ ~ {Tags:["creatures_storm_rider_explosive"],Invisible:1b,Invulnerable:1b,Motion:[0.0,0.32,-0.77]}
execute if score count3 creatures_count matches 0 if entity @p[distance=..64,gamemode=!creative,gamemode=!spectator] if score @s creatures_time matches 1..100 if predicate 1_splatus:chance/1_percent run summon armor_stand ~ ~ ~ {Tags:["creatures_storm_rider_explosive"],Invisible:1b,Invulnerable:1b,Motion:[0.1,0.8,0.04]}
execute if score count3 creatures_count matches 0 if entity @p[distance=..64,gamemode=!creative,gamemode=!spectator] if score @s creatures_time matches 1..100 if predicate 1_splatus:chance/1_percent run summon armor_stand ~ ~ ~ {Tags:["creatures_storm_rider_explosive"],Invisible:1b,Invulnerable:1b,Motion:[-0.1,0.8,-0.04]}
execute if score count3 creatures_count matches 0 if entity @p[distance=..64,gamemode=!creative,gamemode=!spectator] if score @s creatures_time matches 1..100 if predicate 1_splatus:chance/1_percent run summon armor_stand ~ ~ ~ {Tags:["creatures_storm_rider_explosive"],Invisible:1b,Invulnerable:1b,Motion:[-0.15,-0.05,0.04]}
execute if score count3 creatures_count matches 0 if entity @p[distance=..64,gamemode=!creative,gamemode=!spectator] if score @s creatures_time matches 1..100 if predicate 1_splatus:chance/1_percent run summon armor_stand ~ ~ ~ {Tags:["creatures_storm_rider_explosive"],Invisible:1b,Invulnerable:1b,Motion:[0.05,-0.05,-0.1]}

