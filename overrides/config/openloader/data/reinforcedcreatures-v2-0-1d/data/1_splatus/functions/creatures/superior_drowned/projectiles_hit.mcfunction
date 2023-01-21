#hit
particle cloud ~ ~ ~ .3 .3 .3 .1 8 force

execute as @p[gamemode=!creative,gamemode=!spectator,distance=..2] at @s if entity @s[advancements={1_splatus:creatures/used_shield=false}] at @s run effect give @p resistance 1 1 true

execute as @p[gamemode=!creative,gamemode=!spectator,distance=..2] at @s if entity @s[advancements={1_splatus:creatures/used_shield=false}] at @s run effect give @p instant_damage 1 0 true
schedule function 1_splatus:creatures/other/deaths_messages/drowned_light_rays 2t
gamerule showDeathMessages false


execute as @p[gamemode=!creative,gamemode=!spectator,distance=..2] at @s if entity @s[advancements={1_splatus:creatures/used_shield=true}] at @s run function 1_splatus:creatures/other/commands/damage_shield

playsound minecraft:block.amethyst_cluster.break hostile @a[distance=..20] ~ ~ ~ 1 1.75
particle end_rod ~ ~ ~ 0 0 0 .2 3 force @a[distance=..32]