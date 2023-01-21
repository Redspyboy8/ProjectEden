execute as @s[scores={creatures_blazestaff_cooldown=59}] at @s run playsound minecraft:entity.illusioner.prepare_mirror ambient @a[distance=..20] ~ ~ ~ 1 1.5
execute as @s[scores={creatures_blazestaff_cooldown=59}] at @s run playsound minecraft:entity.illusioner.cast_spell ambient @a[distance=..20] ~ ~ ~ 1.5 1.5
execute as @s[scores={creatures_blazestaff_cooldown=60}] at @s run item modify entity @s weapon.mainhand 1_splatus:creatures/blazestaff_ready
#execute as @s[scores={creatures_blazestaff_cooldown=59..}] at @s positioned ~ ~0.75 ~ run particle electric_spark ^-.2 ^ ^.6 .1 .1 .1 .2 2 force @a[distance=..64]

execute as @s[scores={creatures_blazestaff_cooldown=58..62}] at @s run title @s actionbar  [{"translate": "Blaze Staff is charged! - 60/60"}]
execute as @s[scores={creatures_blazestaff_cooldown=1}] at @s run item modify entity @s weapon.mainhand 1_splatus:fire_staff
execute as @s[predicate=!1_splatus:holding/blaze_staff] at @s run scoreboard players set @s creatures_blazestaff_cooldown 0




# click\
execute unless block ~ ~ ~ water as @s[scores={creatures_blazestaff_cooldown=1..62,creatures_right_click=1..}] at @s run function 1_splatus:creatures/mage/staff/attack
execute if block ~ ~ ~ water as @s[scores={creatures_blazestaff_cooldown=1..62,creatures_right_click=1..}] at @s positioned ^ ^1 ^1.5 run function 1_splatus:creatures/mage/staff/fail



