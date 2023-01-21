
scoreboard players add @s creatures_blazestaff_cooldown 0


#no amo? that sucks for you!
execute as @s[scores={creatures_right_click=1..},nbt={SelectedItem:{tag:{Damage:62}}}] at @s run title @s actionbar {"translate": "Your Blaze Staff is at low durability! Repair it with a fishing rod in a grindstone or anvil"}
execute as @s[scores={creatures_right_click=1..},nbt={SelectedItem:{tag:{Damage:62}}}] at @s run particle smoke ^ ^1 ^1.5 .3 .3 .3 .05 10 force
execute as @s[scores={creatures_right_click=1..},nbt={SelectedItem:{tag:{Damage:62}}}] at @s run playsound minecraft:entity.leash_knot.break player @a[distance=..20] ~ ~ ~ 1 .5
execute as @s at @s run item modify entity @s weapon.mainhand 1_splatus:creatures/blazestaff


execute as @s[scores={creatures_blazestaff_cooldown=..59},nbt=!{SelectedItem:{tag:{Damage:62}}}] at @s run scoreboard players add @s creatures_blazestaff_cooldown 1

execute if score spellbound_nocooldown spellbound_count matches 1 as @s[scores={creatures_blazestaff_cooldown=..58},nbt=!{SelectedItem:{tag:{Damage:62}}}] at @s run scoreboard players set @s creatures_blazestaff_cooldown 59
# ready
execute if entity @s[scores={creatures_blazestaff_cooldown=58..}] run function 1_splatus:creatures/mage/staff/action




#charging....
execute as @s[scores={creatures_blazestaff_cooldown=1..58}] at @s run title @s actionbar [{"translate": "Charging... - "},{"score":{"objective":"creatures_blazestaff_cooldown","name": "@s"}},{"translate": "/60"}]


# kill fishing rod
execute as @s at @s run kill @e[type=fishing_bobber,distance=..4]
execute as @s[nbt={Inventory:[{id:"minecraft:fishing_rod",Slot:-106b,tag:{FireStaff:1}}]}] at @s run kill @e[type=fishing_bobber,distance=..4]





execute as @s[scores={creatures_blazestaff_cooldown=..59,creatures_right_click=1..}] run particle smoke ^ ^1 ^1.5 .3 .3 .3 .05 10 force @a[distance=..20]
execute as @s[scores={creatures_blazestaff_cooldown=..59,creatures_right_click=1..}] run playsound minecraft:entity.leash_knot.break ambient @a[distance=..20] ~ ~ ~ 1 .5


execute as @s[scores={creatures_blazestaff_cooldown=..59,creatures_right_click=1..}] run scoreboard players set @s creatures_blazestaff_cooldown 0
