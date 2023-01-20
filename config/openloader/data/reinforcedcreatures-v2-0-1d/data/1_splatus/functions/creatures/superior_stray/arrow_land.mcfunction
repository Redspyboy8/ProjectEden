


execute as @e[sort=nearest,limit=1,type=!#1_splatus:creatures/misc,distance=..3,nbt=!{NoAI:1b}] at @s run scoreboard players set @s creatures_player_frozen 192
execute as @e[sort=nearest,limit=1,type=!#1_splatus:creatures/misc,distance=..3] at @s if entity @s[type=blaze] run function 1_splatus:creatures/other/damage/entity_damage7


playsound entity.stray.death block @a[distance=..20] ~ ~ ~ 1.25 1.85
playsound block.amethyst_block.break block @a[distance=..20] ~ ~ ~ 1.25 1.85
playsound block.amethyst_cluster.break block @a[distance=..20] ~ ~ ~ 1.25 1.35

particle poof ~ ~ ~ .05 .05 .05 .05 5 force @a[distance=..48]
particle minecraft:block ice ~ ~.25 ~ 0 0 0 1 5 force @a[distance=..48]

execute as @e[sort=nearest,limit=1,type=!#1_splatus:creatures/misc,distance=..3] at @s run particle minecraft:snowflake ~ ~1 ~ .3 .5 .3 .15 40 force @a[distance=..48]
execute as @e[sort=nearest,limit=1,type=!#1_splatus:creatures/misc,distance=..3] at @s run particle minecraft:block ice ~ ~1 ~ .3 .5 .3 1 20 force @a[distance=..48]


execute at @s run tp @s ~ -400 ~
execute at @s run kill @s