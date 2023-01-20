#movement
execute as @e[type=glow_squid,tag=creatures_squid,tag=creatures_squid_moving] at @s run function 1_splatus:creatures/deep_sea_squid/movement

execute as @e[type=glow_squid,tag=creatures_squid,tag=!creatures_squid_moving] if predicate 1_splatus:chance/1_percent run tag @s add creatures_squid_moving


execute as @e[type=glow_squid,tag=creatures_squid] unless score @s creatures_time3 matches 200.. run scoreboard players add @s creatures_time3 1

execute as @e[type=glow_squid,tag=creatures_squid] run scoreboard players add @s creatures_time 1

#randomizer
execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=5}] at @s run scoreboard players set @s RNG 2
execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=6}] at @s if score @s NUM matches 1 run scoreboard players set @s creatures_time 25

execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=65}] at @s run scoreboard players set @s RNG 2
execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=66}] at @s if score @s NUM matches 1 run scoreboard players set @s creatures_time 75



execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=30}] at @s if entity @p[distance=..35,gamemode=!creative,gamemode=!spectator] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_squid_inkball"]}

execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=88}] at @s if entity @p[distance=..35,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s RNG 2
execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=89}] at @s if entity @p[distance=..35,gamemode=!creative,gamemode=!spectator] if score @s NUM matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_squid_inkball"]}

execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=95..100}] at @s run scoreboard players set @s creatures_time 0


#attributes!
execute as @e[type=glow_squid,tag=creatures_squid] at @s run particle dust 0.278 0.388 0.337 2 ~ ~ ~ .3 .7 .3 .2 2 force @a[distance=..40]
execute as @e[type=glow_squid,tag=creatures_squid] at @s as @e[type=area_effect_cloud,tag=creatures_randomizer_entity] if score count2 creatures_count matches 1 if score @s NUM matches 1..50 run playsound minecraft:entity.glow_squid.ambient hostile @a[distance=..25] ~ ~ ~ 1.5 .5
execute as @e[type=glow_squid,tag=creatures_squid] at @s as @e[type=area_effect_cloud,tag=creatures_randomizer_entity] if score count2 creatures_count matches 1 if score @s NUM matches 1..10 run playsound minecraft:entity.drowned.ambient_water hostile @a[distance=..25] ~ ~ ~ 1.5 .5
execute as @e[type=glow_squid,tag=creatures_squid,nbt={HurtTime:9s}] at @s run playsound entity.glow_squid.death hostile @a[distance=..25] ~ ~ ~ 1.5 .5
execute as @e[type=glow_squid,tag=creatures_squid,nbt={HurtTime:9s}] at @s run particle squid_ink ~ ~ ~ .3 .6 .2 .2 20 force

#health!
execute as @e[type=glow_squid,tag=creatures_squid] at @s store result score @s creatures_health run data get entity @s Health
execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_health=..460}] unless score @s creatures_time matches 400..500 at @s run scoreboard players set @s creatures_time 400

#pull mobs
execute as @e[type=glow_squid,tag=creatures_squid] at @s if entity @p[distance=..48,gamemode=!spectator] if score @s creatures_time3 matches 200.. unless score @s creatures_time matches 400.. if entity @e[distance=..7,type=#1_splatus:creatures/fish] run scoreboard players set @s creatures_time 1000

execute as @e[type=glow_squid,tag=creatures_squid] at @s if score @s creatures_time matches 1000.. run function 1_splatus:creatures/deep_sea_squid/pull_mobs

#hurt
execute as @e[type=glow_squid,tag=creatures_squid,nbt={HurtTime:9s},scores={creatures_time=..199}] at @s run scoreboard players set @s creatures_time 200
execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=200}] at @s run playsound minecraft:entity.squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 .5
execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=230}] at @s run playsound minecraft:entity.squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.25
execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=230}] at @s run particle squid_ink ~ ~ ~ 0 0 0 .5 100 force
execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=233}] at @s run particle squid_ink ~ ~ ~ 0 0 0 .5 100 force
execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=236}] at @s run particle squid_ink ~ ~ ~ 0 0 0 .5 100 force

#damage
execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=232}] at @s run effect give @e[distance=..4.5,tag=!creatures_squid,type=!#1_splatus:creatures/misc] instant_damage 1 0 true

#damage
execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=262}] at @s run scoreboard players set @s creatures_time 0



#death
execute as @e[type=glow_squid,tag=creatures_squid,scores={creatures_time=400..1000}] at @s run function 1_splatus:creatures/deep_sea_squid/death_animation


execute as @e[type=glow_squid,tag=creatures_squid] at @s unless entity @p[distance=..40,gamemode=!creative,gamemode=!spectator] unless score @s creatures_time matches 400..500 unless score @s creatures_time matches 1000.. run scoreboard players set @s creatures_time 0

