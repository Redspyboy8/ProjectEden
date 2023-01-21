import crafttweaker.api.item.IItemStack;

craftingTable.remove(<item:reliquary:angelheart_vial>);
craftingTable.remove(<item:immersive_armors:warrior_helmet>);
craftingTable.remove(<item:immersive_armors:warrior_chestplate>);
craftingTable.remove(<item:immersive_armors:warrior_leggings>);
craftingTable.remove(<item:immersive_armors:warrior_boots>);
craftingTable.removeByName("undead_expansion:soul_sand_recipe_alt");
craftingTable.removeByName("undead_expansion:soul_soil_recipe_alt");
craftingTable.removeByName("undead_expansion:soul_torch_recipe_alt");
craftingTable.removeByName("comforts:rope_and_nail");
craftingTable.removeByName("tconstruct:common/materials/netherite_ingot_from_nuggets");
craftingTable.removeByName("minecraft:netherite_ingot");
craftingTable.removeByName("byg:pendorite_ingot");
craftingTable.removeByName("endrem:undead_eye");

smithing.removeByName("byg:ametrine_helmet");
smithing.removeByName("byg:ametrine_chestplate");
smithing.removeByName("byg:ametrine_leggings");
smithing.removeByName("byg:ametrine_boots");


for item in Constants.disabledItem {
    craftingTable.remove(item);
}









craftingTable.removeByModid("villagertools");
// 
// craftingTable.remove(<item:quark:rope>);
// craftingTable.remove(<item:quark:rope>);
// craftingTable.remove(<item:quark:rope>);