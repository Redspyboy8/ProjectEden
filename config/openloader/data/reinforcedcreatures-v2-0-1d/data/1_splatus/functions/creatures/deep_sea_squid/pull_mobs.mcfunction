
execute if score @s creatures_time matches 1001 run playsound minecraft:entity.squid.hurt hostile @a[distance=..40] ~ ~ ~ 1.5 .5
execute if score @s creatures_time matches 1004 run playsound minecraft:entity.squid.hurt hostile @a[distance=..40] ~ ~ ~ 1.5 .75
execute if score @s creatures_time matches 1007 run playsound minecraft:entity.squid.hurt hostile @a[distance=..40] ~ ~ ~ 1.5 .5


execute if score @s creatures_time matches 1017.. run particle squid_ink ~ ~-0.25 ~ 0 0 0 .05 1 force @a[distance=..48]

#suck!

execute if score @s creatures_time matches 1027..1081 as @e[distance=..11,type=#1_splatus:creatures/fish] run function 1_splatus:creatures/deep_sea_squid/pull
execute if score @s creatures_time matches 1027..1081 as @e[distance=..11,type=axolotl] run function 1_splatus:creatures/deep_sea_squid/pull
execute if score @s creatures_time matches 1027..1081 as @e[distance=..11,type=chicken] run function 1_splatus:creatures/deep_sea_squid/pull
execute if score @s creatures_time matches 1027..1081 as @e[distance=..11,nbt={IsBaby:1b}] run function 1_splatus:creatures/deep_sea_squid/pull


execute if score @s creatures_time matches 1027..1181 run particle minecraft:enchant ~ ~2 ~ 0 0 0 4 20 force @a[distance=..48]
execute if score @s creatures_time matches 1027..1181 run effect give @e[distance=..1.25,tag=!creatures_squid] wither 2 2 true


#sounds
execute if score @s creatures_time matches 1027 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1030 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1033 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1036 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1039 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1042 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1045 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1048 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1051 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1054 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1057 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1060 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1063 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1066 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1069 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1072 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1075 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1078 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75
execute if score @s creatures_time matches 1081 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..30] ~ ~ ~ 1.5 1.75




execute if score @s creatures_time matches 1084 if entity @e[type=#1_splatus:creatures/fish,distance=..7] run scoreboard players set @s creatures_time 1026

execute if score @s creatures_time matches 1100..1200 run scoreboard players set @s creatures_time 0


