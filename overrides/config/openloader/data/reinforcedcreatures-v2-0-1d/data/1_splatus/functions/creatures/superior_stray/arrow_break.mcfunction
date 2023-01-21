

playsound entity.stray.death block @a[distance=..20] ~ ~ ~ 1.25 1.85
playsound block.amethyst_block.break block @a[distance=..20] ~ ~ ~ 1.25 1.85
playsound block.amethyst_cluster.break block @a[distance=..20] ~ ~ ~ 1.25 1.35

particle poof ~ ~ ~ .05 .05 .05 .05 5 force @a[distance=..48]
particle minecraft:block ice ~ ~.25 ~ 0 0 0 1 5 force @a[distance=..48]



execute at @s run tp @s ~ -400 ~
execute at @s run kill @s