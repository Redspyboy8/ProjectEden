playsound minecraft:item.shield.block player @a[distance=..20]
advancement grant @s only minecraft:story/deflect_arrow

execute if entity @s[predicate=1_splatus:holding/shield_offhand] run item modify entity @s weapon.offhand 1_splatus:creatures/damage_shield
execute if entity @s[predicate=1_splatus:holding/shield_mainhand] run item modify entity @s weapon.mainhand 1_splatus:creatures/damage_shield


execute as @s[predicate=1_splatus:holding/shield_mainhand] at @s if data entity @s {SelectedItem:{tag:{Damage:336}}} run function 1_splatus:creatures/other/commands/damage_shield_break
execute as @s[predicate=1_splatus:holding/shield_offhand] at @s if data entity @s {Inventory:[{Slot:-106b,tag:{Damage:336}}]} run function 1_splatus:creatures/other/commands/damage_shield_break
