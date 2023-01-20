playsound minecraft:block.fire.extinguish player @a[distance=..20] ~ ~ ~ 1 2
scoreboard players set @s creatures_blazestaff_cooldown 0
particle minecraft:large_smoke ~ ~ ~ .2 .2 .2 .02 10 force @a[distance=..32]