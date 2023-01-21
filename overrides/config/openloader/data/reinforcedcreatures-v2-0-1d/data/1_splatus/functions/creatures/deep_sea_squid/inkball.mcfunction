
execute as @e[type=area_effect_cloud,tag=creatures_squid_inkball] at @s run scoreboard players add @s creatures_time 1

execute as @e[type=area_effect_cloud,tag=creatures_squid_inkball,scores={creatures_time=1..}] at @s run particle squid_ink ~ ~ ~ 0 0 0 .05 2 force

execute as @e[type=area_effect_cloud,tag=creatures_squid_inkball,scores={creatures_time=200..}] at @s run kill @s

#start sound and particles
execute as @e[type=area_effect_cloud,tag=creatures_squid_inkball,scores={creatures_time=1}] at @s run playsound minecraft:entity.squid.hurt hostile @a[distance=..40] ~ ~ ~ 1.5 .5
execute as @e[type=area_effect_cloud,tag=creatures_squid_inkball,scores={creatures_time=1}] at @s run particle glow ~ ~-0.25 ~ 0 0 0 .2 10 normal
#movement
execute as @e[type=area_effect_cloud,tag=creatures_squid_inkball,scores={creatures_time=1..4}] at @s if block ~ ~-0.4 ~ #1_splatus:creatures/permeable run tp @s ~ ~-0.4 ~
execute as @e[type=area_effect_cloud,tag=creatures_squid_inkball,scores={creatures_time=5..8}] at @s if block ~ ~-0.4 ~ #1_splatus:creatures/permeable run tp @s ~ ~-0.05 ~

execute as @e[type=area_effect_cloud,tag=creatures_squid_inkball,scores={creatures_time=8}] at @s run tp @s ^ ^ ^.1 facing entity @r[distance=..35,gamemode=!creative,gamemode=!spectator]
execute as @e[type=area_effect_cloud,tag=creatures_squid_inkball,scores={creatures_time=9..19}] at @s run tp @s ^ ^ ^.1
execute as @e[type=area_effect_cloud,tag=creatures_squid_inkball,scores={creatures_time=17..19}] at @s run tp @s ^ ^ ^.1
execute as @e[type=area_effect_cloud,tag=creatures_squid_inkball,scores={creatures_time=20..}] at @s run tp @s ^ ^ ^.35

# NORMAL MOBS
execute as @e[type=area_effect_cloud,tag=creatures_squid_inkball,scores={creatures_time=8..}] at @s unless block ~ ~ ~ #1_splatus:creatures/permeable run function 1_splatus:creatures/deep_sea_squid/hit_notplayer
execute as @e[type=area_effect_cloud,tag=creatures_squid_inkball,scores={creatures_time=8..}] at @s positioned ~ ~-1 ~ if entity @p[distance=..1.5,gamemode=!creative,gamemode=!spectator] run function 1_splatus:creatures/deep_sea_squid/hit



execute as @e[type=area_effect_cloud,tag=creatures_squid_inkball,scores={creatures_time=20..}] at @s unless block ~ ~ ~ water run tp @s ~ ~-0.5 ~
