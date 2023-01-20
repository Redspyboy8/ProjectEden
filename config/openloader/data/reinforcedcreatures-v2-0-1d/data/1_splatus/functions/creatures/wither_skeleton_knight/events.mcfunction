execute as @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s creatures_time 1

execute as @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight,scores={creatures_time=0}] at @s run data merge entity @s {NoAI:0b}
execute as @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight,scores={creatures_time=5}] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] if predicate 1_splatus:chance/33_percent run scoreboard players set @s creatures_time 15




#execute as @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight,scores={creatures_time=32}] at @s if entity @p[distance=..13,gamemode=!creative,gamemode=!spectator] if predicate 1_splatus:chance/33_percent run scoreboard players set @s creatures_time 200
#execute as @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight,scores={creatures_time=200..},limit=1] run function 1_splatus:creatures/wither_skeleton_knight/sub_events/defend


execute as @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight,scores={creatures_time=22}] at @s if entity @p[distance=..13,gamemode=!creative,gamemode=!spectator] if predicate 1_splatus:chance/50_percent run scoreboard players set @s creatures_time 500
execute as @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight,scores={creatures_time=500..}] at @s run function 1_splatus:creatures/wither_skeleton_knight/sub_events/shield





execute as @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight,scores={creatures_time=60..80}] at @s if entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s creatures_time 0


# SWITCH TOOLES

#sound
execute as @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight,predicate=1_splatus:holding/stone_sword] at @s if entity @p[distance=10..25,gamemode=!creative,gamemode=!spectator] run playsound item.armor.equip_netherite hostile @a[distance=..32] ~ ~ ~ 1.5 .75
execute as @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight,predicate=1_splatus:holding/bow] at @s if entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] run playsound item.armor.equip_netherite hostile @a[distance=..32] ~ ~ ~ 1.5 .75

#switch
execute as @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight,predicate=1_splatus:holding/stone_sword] at @s if entity @p[distance=10..25,gamemode=!creative,gamemode=!spectator] run item replace entity @s weapon.mainhand with bow{Enchantments:[{id:"minecraft:flame",lvl:1s}]}
execute as @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight,predicate=1_splatus:holding/bow] at @s if entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] run item replace entity @s weapon.mainhand with stone_sword

execute as @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight] at @s unless entity @p[distance=..25,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s creatures_time 0
