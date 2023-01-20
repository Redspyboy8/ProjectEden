#creeper
execute as @e[type=creeper,tag=creatures_wither_skeleton_knight_power] at @s unless entity @e[distance=..3,type=wither_skeleton,tag=creatures_wither_skeleton_knight] run tp @s ~ -100 ~
execute as @e[type=creeper,tag=creatures_wither_skeleton_knight_power] at @s unless entity @e[distance=..3,type=wither_skeleton,tag=creatures_wither_skeleton_knight] run kill @s


execute as @e[type=armor_stand,tag=creatures_wither_skeleton_knight_shield] at @s unless entity @e[distance=..3,type=wither_skeleton,tag=creatures_wither_skeleton_knight] run kill @s