data modify entity @e[distance=..2,type=skeleton,tag=creatures_skeleton,limit=1] HandItems[0] set from entity @e[distance=..2,type=armor_stand,tag=creatures_boomerang_armorstand,sort=nearest,limit=1] ArmorItems[3]

execute at @s run kill @e[distance=..2,type=armor_stand,tag=creatures_boomerang_armorstand]

execute at @s run kill @s

playsound minecraft:entity.item.pickup ambient @a[distance=..20] ~ ~ ~ 1 2