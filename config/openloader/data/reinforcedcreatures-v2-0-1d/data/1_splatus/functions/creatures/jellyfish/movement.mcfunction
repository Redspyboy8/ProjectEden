scoreboard players add @s creatures_time2 1
execute if score @s creatures_time2 matches 1 run tag @s add creatures_squid_moving
execute if score @s creatures_time2 matches 1 run loot spawn ~ ~ ~ loot 1_splatus:creatures/other/randomize_2
execute if score @s creatures_time2 matches 1 if entity @e[distance=..0.1,type=item,nbt={Item:{tag:{CreaturesRandomizerItem:1,CreaturesRandomizerOutput:1}}}] run scoreboard players set @s creatures_randomizer_output 1
execute if score @s creatures_time2 matches 1 if entity @e[distance=..0.1,type=item,nbt={Item:{tag:{CreaturesRandomizerItem:1,CreaturesRandomizerOutput:2}}}] run scoreboard players set @s creatures_randomizer_output 2


execute if block ~ ~1 ~ water if score @s creatures_randomizer_output matches 1 if score @s creatures_time2 matches 1..10 run tp @s ~ ~.025 ~
execute if block ~ ~1 ~ water if score @s creatures_randomizer_output matches 1 if score @s creatures_time2 matches 11..20 run tp @s ~ ~.05 ~
execute if block ~ ~1 ~ water if score @s creatures_randomizer_output matches 1 if score @s creatures_time2 matches 21..40 run tp @s ~ ~.075 ~
execute if block ~ ~1 ~ water if score @s creatures_randomizer_output matches 1 if score @s creatures_time2 matches 41..50 run tp @s ~ ~.05 ~
execute if block ~ ~1 ~ water if score @s creatures_randomizer_output matches 1 if score @s creatures_time2 matches 51..60 run tp @s ~ ~.025 ~

execute if block ~ ~-1 ~ water if score @s creatures_randomizer_output matches 2 if score @s creatures_time2 matches 1..10 run tp @s ~ ~-.025 ~
execute if block ~ ~-1 ~ water if score @s creatures_randomizer_output matches 2 if score @s creatures_time2 matches 11..20 run tp @s ~ ~-.05 ~
execute if block ~ ~-1 ~ water if score @s creatures_randomizer_output matches 2 if score @s creatures_time2 matches 21..40 run tp @s ~ ~-.075 ~
execute if block ~ ~-1 ~ water if score @s creatures_randomizer_output matches 2 if score @s creatures_time2 matches 41..50 run tp @s ~ ~-.05 ~
execute if block ~ ~-1 ~ water if score @s creatures_randomizer_output matches 2 if score @s creatures_time2 matches 51..60 run tp @s ~ ~-.025 ~


execute if score @s creatures_time2 matches 60.. run scoreboard players reset @s creatures_time2
execute if score @s creatures_time2 matches 60.. run tag @s remove creatures_squid_moving


execute if score @s creatures_time2 matches 1 run kill @e[distance=..0.1,type=item,nbt={Item:{tag:{CreaturesRandomizerItem:1}}}]



