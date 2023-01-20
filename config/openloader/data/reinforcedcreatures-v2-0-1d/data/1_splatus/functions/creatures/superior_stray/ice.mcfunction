scoreboard players add @e[tag=creatures_superiorstray_ice] creatures_time 1

execute as @e[type=armor_stand,tag=creatures_superiorstray_ice,scores={creatures_time=1}] at @s run particle minecraft:poof ~ ~1.5 ~ .3 .3 .3 .01 3 force
execute as @e[type=armor_stand,tag=creatures_superiorstray_ice,scores={creatures_time=1..59}] at @s at @e[sort=nearest,limit=1,tag=creatures_superiorstray,distance=..10] run tp @s ~ ~1.5 ~
execute as @e[type=armor_stand,tag=creatures_superiorstray_ice,scores={creatures_time=60}] at @s run tp @s ^ ^ ^.25 facing entity @p[distance=..25,gamemode=!creative,gamemode=!spectator]
execute as @e[type=armor_stand,tag=creatures_superiorstray_ice,scores={creatures_time=61..}] at @s run tp @s ^ ^ ^.25
execute as @e[type=armor_stand,tag=creatures_superiorstray_ice,scores={creatures_time=60}] at @s run particle minecraft:poof ~ ~1.5 ~ .3 .3 .3 .01 5 force
execute as @e[type=armor_stand,tag=creatures_superiorstray_ice,scores={creatures_time=60}] at @s run playsound block.amethyst_block.step ambient @a[distance=..20] ~ ~ ~ 1.25 .6
execute as @e[type=armor_stand,tag=creatures_superiorstray_ice,scores={creatures_time=60}] at @s run playsound block.amethyst_block.step ambient @a[distance=..20] ~ ~ ~ 1.25 .6
execute as @e[type=armor_stand,tag=creatures_superiorstray_ice,scores={creatures_time=60}] at @s run playsound block.amethyst_block.step ambient @a[distance=..20] ~ ~ ~ 1.25 .6
execute as @e[type=armor_stand,tag=creatures_superiorstray_ice,scores={creatures_time=160..}] at @s run particle minecraft:poof ~ ~2 ~ .3 .3 .3 .075 10 force
execute as @e[type=armor_stand,tag=creatures_superiorstray_ice,scores={creatures_time=160..}] at @s run kill @s


execute unless score creatures_deathmessages creatures_count matches 0 as @e[type=armor_stand,tag=creatures_superiorstray_ice,scores={creatures_time=60..}] at @s positioned ~ ~-.5 ~ if entity @p[distance=..2,gamemode=!creative,gamemode=!spectator] run gamerule showDeathMessages false
execute unless score creatures_deathmessages creatures_count matches 0 as @e[type=armor_stand,tag=creatures_superiorstray_ice,scores={creatures_time=60..}] at @s positioned ~ ~-.5 ~ if entity @p[distance=..2,gamemode=!creative,gamemode=!spectator] run schedule function 1_splatus:creatures/other/deaths_messages/ice 2t
execute as @e[type=armor_stand,tag=creatures_superiorstray_ice,scores={creatures_time=60..}] at @s positioned ~ ~-.5 ~ if entity @p[distance=..2,gamemode=!creative,gamemode=!spectator] run function 1_splatus:creatures/superior_stray/hit

execute as @e[type=armor_stand,tag=creatures_superiorstray_ice,scores={creatures_time=1..}] at @s positioned ~ ~-.5 ~ unless entity @e[tag=creatures_superiorstray,distance=..20] run function 1_splatus:creatures/superior_stray/hit

