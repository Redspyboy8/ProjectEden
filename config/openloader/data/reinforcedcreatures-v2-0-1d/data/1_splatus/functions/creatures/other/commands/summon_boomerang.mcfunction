
execute if entity @s[tag=creatures_skeleton] run summon armor_stand ~ ~ ~ {ShowArms:1b,Pose:{Head:[90f,0f,0f]},Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["creatures_boomerang_armorstand","creatures_boomerang_armorstand_damage"]}

execute unless entity @s[tag=creatures_skeleton] run summon armor_stand ~ ~ ~ {ShowArms:1b,Pose:{Head:[90f,0f,0f]},Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["creatures_boomerang_armorstand"]}

summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_boomerang"]}


execute unless entity @s[type=player] as @e[distance=..2,type=armor_stand,tag=creatures_boomerang_armorstand] at @s run data modify entity @s ArmorItems[3] set from entity @e[sort=nearest,limit=1,type=!#1_splatus:creatures/misc,type=!armor_stand] HandItems[0]
execute if entity @s[type=player] as @e[distance=..2,type=armor_stand,tag=creatures_boomerang_armorstand] at @s run data modify entity @s ArmorItems[3] set from entity @e[sort=nearest,limit=1,type=!#1_splatus:creatures/misc] SelectedItem

playsound minecraft:item.trident.riptide_1 hostile @a[distance=..20] ~ ~ ~ 1.5 1.25



execute if entity @s[tag=creatures_skeleton] run item replace entity @s weapon.mainhand with air


particle cloud ~ ~1.5 ~ .1 .1 .1 .12 4 force @a[distance=..32]