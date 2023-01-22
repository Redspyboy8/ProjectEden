#priority 1

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootConditions;


//Replaces all instances of rope with rope from supplementaries. Rope placed in strucutres will also drop supp. rope.
loot.modifiers.register(
    "replace_rope",
    LootConditions.none(),
    CommonLootModifiers.replaceWith(<tag:items:forge:rope>, <item:supplementaries:rope>)
);
loot.modifiers.register(
    "creeper_spores",
    LootConditions.none(),
    CommonLootModifiers.replaceWith(<item:undead_expansion:creeper_husk>, <item:savage_and_ravage:creeper_spores>)
);

loot.modifiers.removeByName("endrem:minecraft/inject/chests/nether_bridge"); //Reward for beating Ignis
loot.modifiers.removeByName("endrem:minecraft/inject/entities/skeleton_horse"); //Undead Soul Removed. Reward for Beating Swampjaw
loot.modifiers.removeByName("endrem:minecraft/inject/chests/abandoned_mineshaft"); //Found in IDAS Mines
loot.modifiers.removeByName("endrem:minecraft/inject/chests/shipwreck_treasure"); //Reward for beating Captain Cornella
loot.modifiers.removeByName("endrem:minecraft/inject/chests/buried_treasure"); //^^
loot.modifiers.removeByName("endrem:minecraft/inject/chests/igloo_chest"); //Reward for beating the Mother of the Maze
loot.modifiers.removeByName("endrem:minecraft/inject/chests/pillager_outpost"); //Found in bedroom of the IDAS Pillager Fortress
loot.modifiers.removeByName("endrem:minecraft/inject/entities/evoker"); //Reward for beating The Conjurer
loot.modifiers.removeByName("endrem:minecraft/inject/chests/woodland_mansion"); //^^
loot.modifiers.removeByName("endrem:minecraft/inject/chests/jungle_temple"); //Ancient city loot

loot.modifiers.removeByName("endrem:minecraft/inject/entities/witch"); //Removed
loot.modifiers.removeByName("ars_nouveau:dungeon_loot");

loot.modifiers.removeByName("delightful:acorn_from_natural_decoration");
loot.modifiers.removeByName("delightful:acorn");
 

//This ensures that these eyes can only be obtained via craftweaker-defined loot conditions
loot.modifiers.register("no_corrupteye", LootConditions.none(), CommonLootModifiers.remove(<item:endrem:corrupted_eye>));
loot.modifiers.register("no_coldeye", LootConditions.none(), CommonLootModifiers.remove(<item:endrem:cold_eye>));
loot.modifiers.register("no_losteye", LootConditions.none(), CommonLootModifiers.remove(<item:endrem:lost_eye>));
loot.modifiers.register("no_oldeye", LootConditions.none(), CommonLootModifiers.remove(<item:endrem:old_eye>));
loot.modifiers.register("no_nethereye", LootConditions.none(), CommonLootModifiers.remove(<item:endrem:nether_eye>));
loot.modifiers.register("no_rogueeye", LootConditions.none(), CommonLootModifiers.remove(<item:endrem:rogue_eye>));
loot.modifiers.register("no_magiceye", LootConditions.none(), CommonLootModifiers.remove(<item:endrem:magical_eye>));