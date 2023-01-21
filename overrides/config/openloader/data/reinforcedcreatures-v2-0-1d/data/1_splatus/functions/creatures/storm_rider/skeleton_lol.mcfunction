scoreboard players add @s creatures_time 1
execute store result score @s creatures_health run data get entity @s Health
execute if score @e[sort=nearest,limit=1,type=phantom,tag=creatures_stormrider_phantom] creatures_time matches ..499 if score @s creatures_health matches ..170 run scoreboard players set @e[sort=nearest,limit=1,type=phantom,tag=creatures_stormrider_phantom] creatures_time 500
