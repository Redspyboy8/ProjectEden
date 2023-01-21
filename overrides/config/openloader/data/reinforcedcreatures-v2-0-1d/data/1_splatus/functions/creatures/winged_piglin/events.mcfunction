execute as @e[type=piglin,tag=creatures_winged_piglin] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run scoreboard players add @s creatures_time 1
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=71..100}] run scoreboard players set @s creatures_time 0

execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=10}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run scoreboard players set @s RNG 3 
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=11}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] if score @s NUM matches 2 run scoreboard players add @s creatures_time 20


execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=30}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run scoreboard players set @s RNG 3 
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=31}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] if score @s NUM matches 2 run scoreboard players set @s creatures_time 200
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=200..},limit=1] at @s run function 1_splatus:creatures/winged_piglin/sub_events/fly


execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=22}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run scoreboard players set @s RNG 2 
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=23}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] if score @s NUM matches 2 run scoreboard players set @s creatures_time 400
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=400..},limit=1] at @s run function 1_splatus:creatures/winged_piglin/sub_events/dash

execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=60}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run scoreboard players set @s RNG 2 
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=61}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] if score @s NUM matches 2 run scoreboard players set @s creatures_time 400
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=400..},limit=1] at @s run function 1_splatus:creatures/winged_piglin/sub_events/dash



execute as @e[tag=creatures_winged_piglin,type=piglin] at @s unless entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run scoreboard players set @s creatures_time 0
