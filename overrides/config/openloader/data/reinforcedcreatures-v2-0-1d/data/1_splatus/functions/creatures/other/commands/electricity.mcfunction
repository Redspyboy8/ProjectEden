particle minecraft:end_rod ~ ~.5 ~ .5 .5 .5 .4 75 force @a[distance=..64]
particle minecraft:electric_spark ~ ~.5 ~ 1 1 1 .9 100 force @a[distance=..64]
particle flash
playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..30] ~ ~ ~ 1.5 2
playsound minecraft:entity.wither.break_block hostile @a[distance=..30] ~ ~ ~ 1.5 1.5
scoreboard players set @e[distance=..5.5,tag=!creatures_jellyfish,type=!#1_splatus:creatures/misc] creatures_player_electricuted 1