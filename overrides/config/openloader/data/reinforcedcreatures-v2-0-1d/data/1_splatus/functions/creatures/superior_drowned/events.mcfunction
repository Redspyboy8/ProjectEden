execute as @e[type=drowned,tag=creatures_superiordrowned] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s creatures_time 1

execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=50}] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s RNG 1
execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=51}] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] if score @s NUM matches 1 unless block ~ ~ ~ air run tp @s ^ ^ ^.75 facing entity @p[distance=..25,gamemode=!creative,gamemode=!spectator]
execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=52..60}] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] if score @s NUM matches 1 unless block ~ ~ ~ air run tp @s ^ ^ ^.75
execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=51}] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] if score @s NUM matches 1 unless block ~ ~ ~ air run playsound item.trident.riptide_3 hostile @a[distance=..25] ~ ~ ~ 1.5 1
execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=51..60}] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] if score @s NUM matches 1 unless block ~ ~ ~ air run particle minecraft:cloud ~ ~ ~ .3 .3 .3 .1 4 force
execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=60}] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s NUM 0




#jump
execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=9}] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s RNG 1
execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=10}] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] if score @s NUM matches 1 run scoreboard players set @s creatures_time 100

execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=101}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator] run data merge entity @s {NoAI:1b}
execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=101..103}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator] run playsound minecraft:entity.illusioner.prepare_mirror ambient @a[distance=..30] ~ ~ ~ 1.5 1
execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=101..130}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator] run tp @s ~ ~.1 ~ ~12 ~
execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=130..148}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator] run tp @s ~ ~.05 ~ ~2 ~
execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=148..200}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator] run tp @s ~ ~ ~ facing entity @p[distance=..25,gamemode=!creative,gamemode=!spectator]

execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=150..200}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator] run function 1_splatus:creatures/superior_drowned/sub_events/projectiles_event

execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=170}] at @s run data merge entity @s {NoAI:0b}
execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=195..200}] at @s run scoreboard players set @s creatures_time 12




scoreboard players set @e[tag=creatures_superiordrowned,scores={creatures_time=70..80}] creatures_time 0





#particles
execute as @e[type=drowned,tag=creatures_superiordrowned] at @s run particle effect ~ ~1 ~ .3 .5 .3 .2 2 normal @a[distance=..40]



execute as @e[type=drowned,tag=creatures_superiordrowned] at @s unless entity @p[distance=..20,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s creatures_time 0
execute as @e[type=drowned,tag=creatures_superiordrowned,scores={creatures_time=0}] at @s run data merge entity @s {NoAI:0b}