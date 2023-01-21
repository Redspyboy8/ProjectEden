
execute run item replace entity @s armor.head with air
execute run item replace entity @s armor.chest with air
execute run item replace entity @s armor.legs with air
execute run item replace entity @s armor.feet with air




execute if predicate 1_splatus:chance/7.5_percent run item replace entity @s armor.head with iron_helmet
execute if predicate 1_splatus:chance/7.5_percent run item replace entity @s armor.chest with iron_chestplate
execute if predicate 1_splatus:chance/7.5_percent run item replace entity @s armor.legs with iron_leggings
execute if predicate 1_splatus:chance/7.5_percent run item replace entity @s armor.feet with iron_boots





execute if predicate 1_splatus:chance/7.5_percent run item replace entity @s armor.head with chainmail_helmet
execute if predicate 1_splatus:chance/7.5_percent run item replace entity @s armor.chest with chainmail_chestplate
execute if predicate 1_splatus:chance/7.5_percent run item replace entity @s armor.legs with chainmail_leggings
execute if predicate 1_splatus:chance/7.5_percent run item replace entity @s armor.feet with chainmail_boots






execute run item modify entity @s armor.head 1_splatus:creatures/armorstand_armor
execute run item modify entity @s armor.chest 1_splatus:creatures/armorstand_armor
execute run item modify entity @s armor.legs 1_splatus:creatures/armorstand_armor
execute run item modify entity @s armor.feet 1_splatus:creatures/armorstand_armor
