
execute as @p[gamemode=!creative,gamemode=!spectator,distance=..2] at @s if entity @s[advancements={1_splatus:creatures/used_shield=false}] at @s run effect give @p[distance=..2,gamemode=!creative,gamemode=!spectator] resistance 1 0 true
playsound minecraft:entity.squid.squirt ambient @a[distance=..20] ~ ~1.5 ~ 1 .85
execute as @p[gamemode=!creative,gamemode=!spectator,distance=..2] at @s if entity @s[advancements={1_splatus:creatures/used_shield=false}] at @s run effect give @p[distance=..2,gamemode=!creative,gamemode=!spectator] instant_damage
particle minecraft:poof ~ ~1.5 ~ .3 .3 .3 .075 10 force
kill @s


execute as @p[gamemode=!creative,gamemode=!spectator,distance=..2] at @s if entity @s[advancements={1_splatus:creatures/used_shield=true}] at @s run function 1_splatus:creatures/other/commands/damage_shield