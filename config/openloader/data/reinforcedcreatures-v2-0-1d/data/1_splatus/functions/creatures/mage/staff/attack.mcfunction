
execute at @s run playsound minecraft:entity.leash_knot.break ambient @a[distance=..20] ~ ~ ~ 1 .5
execute at @s run particle smoke ^ ^1 ^1.5 .3 .3 .3 .05 10 force
execute at @s run playsound minecraft:block.fire.extinguish ambient @a[distance=..20] ~ ~ ~ 1 2

# actual hit
execute at @s run particle flame ^ ^1 ^1.5 .3 .3 .3 .1 10 force
summon minecraft:armor_stand ^ ^1 ^1.25 {Tags:["creatures_mage_fire"],Invisible:1b,Invulnerable:1b,NoGravity:1b}

execute if predicate 1_splatus:chance/50_percent run item modify entity @s weapon.mainhand 1_splatus:damage1



scoreboard players set @s creatures_blazestaff_cooldown 0