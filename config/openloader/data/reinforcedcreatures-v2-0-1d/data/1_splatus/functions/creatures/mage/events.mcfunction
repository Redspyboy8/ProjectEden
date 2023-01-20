

#events

execute as @e[tag=creatures_mage,scores={creatures_time=0}] at @s run data merge entity @s {NoAI:0b}
execute as @e[tag=creatures_mage,scores={creatures_time=1}] at @s run particle cloud ~ ~1 ~ .3 .5 .3 .1 30 force
execute as @e[tag=creatures_mage,scores={creatures_time=1..40}] at @s as @p at @s run tp @e[tag=creatures_mage,scores={creatures_time=1}] ^ ^-2 ^7
execute as @e[tag=creatures_mage,scores={creatures_time=1..20}] at @s run tp @s ~ ~.2 ~
execute as @e[tag=creatures_mage,scores={creatures_time=20..30}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run tp @s ~ ~.075 ~
execute as @e[tag=creatures_mage,scores={creatures_time=1..20}] at @s run data merge entity @s {NoAI:1b}

#sound
execute as @e[tag=creatures_mage,scores={creatures_time=1}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run playsound entity.enderman.teleport hostile @a[distance=..30] ~ ~ ~ 1 .5
execute as @e[tag=creatures_mage,scores={creatures_time=3}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run playsound minecraft:entity.piglin.angry hostile @a[distance=..30] ~ ~ ~ 1
execute as @e[tag=creatures_mage,scores={creatures_time=14}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run playsound minecraft:entity.piglin.angry hostile @a[distance=..30] ~ ~ ~ 1
execute as @e[tag=creatures_mage,scores={creatures_time=1..50}] at @s run effect give @s fire_resistance 1000000 1 true

#particles
execute as @e[tag=creatures_mage,scores={creatures_time=1..20}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run particle snowflake ~ ~1 ~ .3 .5 .3 .05 2 force
execute as @e[tag=creatures_mage,scores={creatures_time=2}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run particle cloud ~ ~1 ~ .3 .5 .3 .1 30 force


#face
execute as @e[tag=creatures_mage,scores={creatures_time=1..25}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run tp @s ~ ~ ~ facing entity @p

#glimmer
execute as @e[tag=creatures_mage,scores={creatures_time=20}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run data merge entity @s {HandItems:[{id:"minecraft:fishing_rod",tag:{CustomModelData:27016},Count:1b}]}

#spin
#execute as @e[tag=creatures_mage,scores={creatures_time=20..30}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run tp @s ~ ~ ~ ~4 ~
#execute as @e[tag=creatures_mage,scores={creatures_time=31..38}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run tp @s ~ ~ ~ ~10 ~
#execute as @e[tag=creatures_mage,scores={creatures_time=39..41}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run tp @s ~ ~ ~ ~20 ~
#execute as @e[tag=creatures_mage,scores={creatures_time=42..56}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run tp @s ~ ~ ~ ~35 ~
#execute as @e[tag=creatures_mage,scores={creatures_time=57..62}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run tp @s ~ ~ ~ ~10 ~
#execute as @e[tag=creatures_mage,scores={creatures_time=63..68}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run tp @s ~ ~ ~ ~4 ~

#vexes
execute as @e[tag=creatures_mage,scores={creatures_time=30..70},limit=1] run function 1_splatus:creatures/mage/sub_events/vex1


#teleport
execute as @e[tag=creatures_mage,scores={creatures_time=70}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run particle cloud ~ ~1 ~ .3 .5 .3 .1 30 force
execute as @e[tag=creatures_mage,scores={creatures_time=70}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] at @s run function 1_splatus:creatures/other/commands/teleport
execute as @e[tag=creatures_mage,scores={creatures_time=70}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run particle cloud ~ ~1 ~ .3 .5 .3 .1 30 force

execute as @e[tag=creatures_mage,scores={creatures_time=70}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run data merge entity @s {NoAI:0b}



execute as @e[tag=creatures_mage,scores={creatures_time=89}] run scoreboard players set @s RNG 1
execute as @e[tag=creatures_mage,scores={creatures_time=90}] if score @s NUM matches 1 at @s at @r[distance=..30] run summon minecraft:armor_stand ~ ~ ~ {Tags:["creatures_mage_fire"],Invisible:1b,Invulnerable:1b}
execute as @e[tag=creatures_mage,scores={creatures_time=105}] run scoreboard players set @s RNG 1
execute as @e[tag=creatures_mage,scores={creatures_time=110}] if score @s NUM matches 1 at @s at @r[distance=..30] run summon minecraft:armor_stand ~ ~ ~ {Tags:["creatures_mage_fire"],Invisible:1b,Invulnerable:1b}


#spin
#execute as @e[tag=creatures_mage,scores={creatures_time=120..130}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run tp @s ~ ~ ~ ~4 ~
#execute as @e[tag=creatures_mage,scores={creatures_time=131..138}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run tp @s ~ ~ ~ ~10 ~
#execute as @e[tag=creatures_mage,scores={creatures_time=139..141}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run tp @s ~ ~ ~ ~20 ~
#execute as @e[tag=creatures_mage,scores={creatures_time=142..156}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run tp @s ~ ~ ~ ~35 ~
#execute as @e[tag=creatures_mage,scores={creatures_time=157..162}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run tp @s ~ ~ ~ ~10 ~
#execute as @e[tag=creatures_mage,scores={creatures_time=163..168}] at @s if entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run tp @s ~ ~ ~ ~4 ~

#vexes
execute as @e[tag=creatures_mage,scores={creatures_time=120..},limit=1] run function 1_splatus:creatures/mage/sub_events/vex2





execute as @e[tag=creatures_mage,type=piglin] at @s unless entity @p[distance=..20,gamemode=!creative,gamemode=!spectator,tag=!creatures_is_wearing_gold] run scoreboard players set @s creatures_time 0
