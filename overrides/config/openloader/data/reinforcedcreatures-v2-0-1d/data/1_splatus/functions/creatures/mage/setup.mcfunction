execute at @e[type=piglin,tag=creatures_mage] run particle dust 0.906 0.412 0.824 1 ~ ~1 ~ .3 .5 .3 .2 1 force

execute as @e[tag=creatures_mage] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run scoreboard players add @s creatures_time 1
execute as @e[tag=creatures_mage] at @s run scoreboard players set @s[scores={creatures_time=200..}] creatures_time 70
execute as @e[tag=creatures_mage] at @s unless entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run scoreboard players set @s creatures_time 0

execute as @e[tag=creatures_randomizer_entity] if score @s NUM matches 1..20 as @e[tag=creatures_mage,nbt={HurtTime:10s},scores={creatures_time=70..}] if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] at @s run particle cloud ~ ~1 ~ .3 .5 .3 .1 30 force
execute as @e[tag=creatures_randomizer_entity] if score @s NUM matches 1..20 as @e[tag=creatures_mage,nbt={HurtTime:10s},scores={creatures_time=70..}] if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] at @s as @p[distance=..30] at @s run tp @e[tag=creatures_mage,scores={creatures_time=1..},sort=nearest,limit=1] ^ ^3 ^-3
execute as @e[tag=creatures_randomizer_entity] if score @s NUM matches 1..20 as @e[tag=creatures_mage,nbt={HurtTime:10s},scores={creatures_time=70..}] if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] at @s run particle cloud ~ ~1 ~ .3 .5 .3 .1 30 force






execute as @e[type=egg,nbt={Item:{id:"minecraft:egg",tag:{FireSpell:1}}}] at @s as @p at @s run summon minecraft:armor_stand ^ ^ ^1 {Tags:["creatures_mage_fire"],Invisible:1b,Invulnerable:1b}
execute as @e[type=egg,nbt={Item:{id:"minecraft:egg",tag:{FireSpell:1}}}] at @s run kill @s

