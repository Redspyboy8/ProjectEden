execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=201}] at @s run particle cloud ~ ~ ~ .3 .1 .3 .2 8 force
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=201..203}] at @s run data merge entity @s {Motion:[0.0,0.7,0.0]}
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=204..210}] at @s run data merge entity @s {Motion:[0.0,0.3,0.0]}

execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=210..215}] at @s run data merge entity @s {Motion:[0.0,0.1,0.0]}

execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=215}] at @s run data merge entity @s {NoAI:1b}
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=215..225}] at @s run tp @s ~ ~ ~ facing entity @p[distance=..13,gamemode=!creative,gamemode=!spectator]
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=225}] at @s run particle firework ~ ~1 ~ .3 .3 .3 .2 10 force
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=225}] at @s run playsound entity.firework_rocket.launch ambient @a[distance=..20]
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=220..221}] at @s run data merge entity @s {NoAI:0b,FallFlying:0b}

# MOTION
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=224}] at @s run loot spawn ~ ~ ~ loot 1_splatus:creatures/other/randomize_8
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=224}] at @s if entity @e[distance=..0.1,type=item,nbt={Item:{tag:{CreaturesRandomizerItem:1,CreaturesRandomizerOutput:1}}}] run scoreboard players set @s creatures_randomizer_output 1
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=224}] at @s if entity @e[distance=..0.1,type=item,nbt={Item:{tag:{CreaturesRandomizerItem:1,CreaturesRandomizerOutput:2}}}] run scoreboard players set @s creatures_randomizer_output 2
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=224}] at @s if entity @e[distance=..0.1,type=item,nbt={Item:{tag:{CreaturesRandomizerItem:1,CreaturesRandomizerOutput:3}}}] run scoreboard players set @s creatures_randomizer_output 3
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=224}] at @s if entity @e[distance=..0.1,type=item,nbt={Item:{tag:{CreaturesRandomizerItem:1,CreaturesRandomizerOutput:4}}}] run scoreboard players set @s creatures_randomizer_output 4
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=224}] at @s if entity @e[distance=..0.1,type=item,nbt={Item:{tag:{CreaturesRandomizerItem:1,CreaturesRandomizerOutput:5}}}] run scoreboard players set @s creatures_randomizer_output 5
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=224}] at @s if entity @e[distance=..0.1,type=item,nbt={Item:{tag:{CreaturesRandomizerItem:1,CreaturesRandomizerOutput:6}}}] run scoreboard players set @s creatures_randomizer_output 6
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=224}] at @s if entity @e[distance=..0.1,type=item,nbt={Item:{tag:{CreaturesRandomizerItem:1,CreaturesRandomizerOutput:7}}}] run scoreboard players set @s creatures_randomizer_output 7
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=224}] at @s if entity @e[distance=..0.1,type=item,nbt={Item:{tag:{CreaturesRandomizerItem:1,CreaturesRandomizerOutput:8}}}] run scoreboard players set @s creatures_randomizer_output 8
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=224}] at @s run kill @e[distance=..0.1,type=item,nbt={Item:{tag:{CreaturesRandomizerItem:1}}}]


execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=225..228}] at @s if score @s creatures_randomizer_output matches 1 run data merge entity @s {Motion:[0.62,0.0,0.0]}
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=225..228}] at @s if score @s creatures_randomizer_output matches 2 run data merge entity @s {Motion:[-0.62,0.0,0.0]}
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=225..228}] at @s if score @s creatures_randomizer_output matches 3 run data merge entity @s {Motion:[0.0,0.0,-0.62]}
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=225..228}] at @s if score @s creatures_randomizer_output matches 4 run data merge entity @s {Motion:[0.0,0.0,0.62]}
#execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=225..228}] at @s if score @s NUM matches 4 run data merge entity @s {Motion:[0.0,0.32,0.0]}

execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=229..335}] at @s if score @s creatures_randomizer_output matches 1 run data merge entity @s {Motion:[0.31,0.0,0.0]}
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=229..335}] at @s if score @s creatures_randomizer_output matches 2 run data merge entity @s {Motion:[-0.31,0.0,0.0]}
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=229..335}] at @s if score @s creatures_randomizer_output matches 3 run data merge entity @s {Motion:[0.0,0.0,-0.31]}
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=229..335}] at @s if score @s creatures_randomizer_output matches 4 run data merge entity @s {Motion:[0.0,0.0,0.31]}
#execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=229..335}] at @s if score @s NUM matches 4 run data merge entity @s {Motion:[0.0,0.31,0.0]}

# Arrow Motion

execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=225}] at @s if score @s creatures_randomizer_output matches 4..8 run function 1_splatus:creatures/other/commands/summon_gold_swords2





# END

execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=225..230}] at @s run effect give @s slow_falling 3 1 true


execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=225..230}] at @s run tp @s ~ ~ ~ ~30 ~
execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=231..241}] at @s run tp @s ~ ~ ~ ~20 ~

execute as @e[type=piglin,tag=creatures_winged_piglin,scores={creatures_time=250..255}] at @s run scoreboard players set @s creatures_time 0