#movement
execute if entity @s[tag=creatures_jellyfish_moving] at @s run function 1_splatus:creatures/deep_sea_squid/movement

execute if entity @s[tag=!creatures_jellyfish_moving] if predicate 1_splatus:chance/1_percent run tag @s add creatures_jellyfish_moving


execute unless score @s creatures_time3 matches 200.. run scoreboard players add @s creatures_time3 1


scoreboard players add @s creatures_time 1

execute if score @s creatures_time matches 2 if predicate 1_splatus:chance/33_percent run scoreboard players set @s creatures_time 30

execute if score @s creatures_time matches 120..399 run scoreboard players set @s creatures_time 0


#im gonna hurt ya with electric spark particles! just watch!
execute if score @s creatures_time matches 35..70 run particle minecraft:electric_spark ~ ~.25 ~ .3 .5 .3 .5 12 force @a[distance=..48]
execute if score @s creatures_time matches 65 positioned ~ ~-.5 ~ run function 1_splatus:creatures/other/commands/electricity


#attributes!
execute run particle dust 0.933 0.667 0.969 2 ~ ~ ~ .3 .7 .3 .2 2 force @a[distance=..40]
execute if predicate 1_splatus:chance/2_percent run playsound minecraft:entity.glow_squid.ambient hostile @a[distance=..25] ~ ~ ~ .75 1.8
execute if predicate 1_splatus:chance/2_percent run playsound minecraft:entity.glow_squid.ambient hostile @a[distance=..25] ~ ~ ~ .75 1.25
execute if predicate 1_splatus:chance/2_percent run playsound minecraft:block.amethyst_block.chime hostile @a[distance=..25] ~ ~ ~ .75 .75
execute if entity @s[nbt={HurtTime:9s}] at @s run playsound entity.glow_squid.death hostile @a[distance=..25] ~ ~ ~ 1.5 1.75
execute if entity @s[nbt={HurtTime:9s}] at @s run particle end_rod ~ ~ ~ .3 .6 .2 .2 6 force

#health!
execute store result score @s creatures_health run data get entity @s Health
execute if score @s creatures_health matches ..470 unless score @s creatures_time matches 400.. at @s run scoreboard players set @s creatures_time 400


#death
execute as @s[tag=creatures_jellyfish,scores={creatures_time=400..}] at @s run function 1_splatus:creatures/jellyfish/death_animation


execute unless score @s creatures_time3 matches 400.. unless score @s creatures_time matches 400.. unless score @s creatures_time matches 35..70 unless entity @e[distance=..5,type=#1_splatus:creatures/fish] unless entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s creatures_time 0

