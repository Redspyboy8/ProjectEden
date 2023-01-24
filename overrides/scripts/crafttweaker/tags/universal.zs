#priority 50

import mods.recipestages.Recipes;
import mods.itemstages.ItemStages;
import mods.gamestages.StageHelper;
import crafttweaker.api.mod.Mod;
import crafttweaker.api.mod.Mods;
import crafttweaker.api.bracket.BracketHandlers;

/*
**Universal Item Tag** 
This item tag includes items available at the start of the game from mods that have
their contents set to later stages.

*/
//<tag:items:crafttweaker:universal>.add();
val botaniaItemList = loadedMods.botania.getItems();
val malumItemList = loadedMods.malum.getItems();
val createItemList = loadedMods.create.getItems();
val tconstructItemList = loadedMods.tconstruct.getItems();
val treforgedItemList = loadedMods.tinkers_reforged.getItems();
val arsItemList = loadedMods.ars_nouveau.getItems();


//Botania Allowed Items
for itemDef in botaniaItemList {
    val botaniaItem = itemDef.defaultInstance;
    if (<tag:items:botania:mystical_flowers>.contains(botaniaItem) | <tag:items:forge:mushrooms>.contains(botaniaItem) | <tag:items:botania:petals>.contains(botaniaItem)) {
        <tag:items:crafttweaker:universal>.add(botaniaItem);
    }
}

<tag:items:crafttweaker:universal>.add(<item:botania:lexicon>);
<tag:items:crafttweaker:universal>.add(<item:botania:black_lotus>);

//Malum Allowed Items
for itemDef in malumItemList {
    val malumItem = itemDef.defaultInstance;
    if (
        <tag:items:forge:ores>.contains(malumItem) | 
        <tag:items:forge:gems>.contains(malumItem) | 
        <tag:items:minecraft:logs>.contains(malumItem) | 
        <tag:items:minecraft:planks>.contains(malumItem) |
        <tag:items:minecraft:wooden_slabs>.contains(malumItem) | 
        <tag:items:minecraft:wooden_stairs>.contains(malumItem) | 
        <tag:items:minecraft:wooden_fences>.contains(malumItem) | 
        <tag:items:minecraft:wooden_trapdoors>.contains(malumItem) | 
        <tag:items:minecraft:wooden_pressure_plates>.contains(malumItem) | 
        <tag:items:minecraft:wooden_buttons>.contains(malumItem) | 
        <tag:items:minecraft:wooden_doors>.contains(malumItem) | 
        <tag:items:forge:ores>.contains(malumItem) | 
        <tag:items:forge:gems>.contains(malumItem) |
        <tag:items:malum:sapballs>.contains(malumItem) | 
        <tag:items:minecraft:saplings>.contains(malumItem) | 
        <tag:items:minecraft:leaves>.contains(malumItem) 
    ) {
        <tag:items:crafttweaker:universal>.add(malumItem);
    }
}

<tag:items:crafttweaker:universal>.add(<item:malum:cluster_of_brilliance>);
<tag:items:crafttweaker:universal>.add(<item:malum:chunk_of_brilliance>);
<tag:items:crafttweaker:universal>.add(<item:malum:rare_earths>);
<tag:items:crafttweaker:universal>.add(<item:malum:blazing_quartz_fragment>);
<tag:items:crafttweaker:universal>.add(<item:malum:coal_fragment>);
<tag:items:crafttweaker:universal>.add(<item:malum:charcoal_fragment>);
<tag:items:crafttweaker:universal>.add(<item:malum:block_of_blazing_quartz>);
<tag:items:crafttweaker:universal>.add(<item:malum:block_of_soulstone>);
<tag:items:crafttweaker:universal>.add(<item:malum:holy_sap>);
<tag:items:crafttweaker:universal>.add(<item:malum:holy_syrup>);
<tag:items:crafttweaker:universal>.add(<item:malum:holy_caramel>);
<tag:items:crafttweaker:universal>.add(<item:malum:unholy_sap>);
<tag:items:crafttweaker:universal>.add(<item:malum:unholy_syrup>);
<tag:items:crafttweaker:universal>.add(<item:malum:unholy_caramel>);
<tag:items:crafttweaker:universal>.add(<item:malum:raw_soulstone>);
<tag:items:crafttweaker:universal>.add(<item:malum:soulwood_item_pedestal>);
<tag:items:crafttweaker:universal>.add(<item:malum:soulwood_item_stand>);
<tag:items:crafttweaker:universal>.add(<item:malum:soulwood_sign>);
<tag:items:crafttweaker:universal>.add(<item:malum:soulwood_boat>);
<tag:items:crafttweaker:universal>.add(<item:malum:soulwood_beam>);
<tag:items:crafttweaker:universal>.add(<item:malum:runewood_planks_fence_gate>);
<tag:items:crafttweaker:universal>.add(<item:malum:runewood_item_pedestal>);
<tag:items:crafttweaker:universal>.add(<item:malum:runewood_item_stand>);
<tag:items:crafttweaker:universal>.add(<item:malum:runewood_sign>);
<tag:items:crafttweaker:universal>.add(<item:malum:runewood_boat>);
<tag:items:crafttweaker:universal>.add(<item:malum:runewood_beam>);
<tag:items:crafttweaker:universal>.add(<item:malum:runewood_planks_fence_gate>);
<tag:items:crafttweaker:universal>.add(<item:malum:blazing_torch>);
<tag:items:crafttweaker:universal>.add(<item:malum:blazing_sconce>);
<tag:items:crafttweaker:universal>.add(<item:malum:encyclopedia_arcana>);
<tag:items:crafttweaker:universal>.add(<item:malum:grim_talc>);
<tag:items:crafttweaker:universal>.add(<item:malum:rotting_essence>);


//Create Allowed Items
for itemDef in createItemList {
    val createItem = itemDef.defaultInstance;
    if (
        <tag:items:forge:ores>.contains(createItem) | 
        <tag:items:forge:raw_materials>.contains(createItem) | 
        <tag:items:forge:ingots>.contains(createItem) | 
        <tag:items:forge:storage_blocks>.contains(createItem) | 
        <tag:items:forge:nuggets>.contains(createItem) | 
        <tag:items:create:stone_types>.contains(createItem) | 
        <tag:items:create:stone_types/granite>.contains(createItem) |
        <tag:items:create:stone_types/diorite>.contains(createItem) |
        <tag:items:create:stone_types/andesite>.contains(createItem) |
        <tag:items:create:stone_types/calcite>.contains(createItem) |
        <tag:items:create:stone_types/dripstone>.contains(createItem) |
        <tag:items:create:stone_types/deepslate>.contains(createItem) |
        <tag:items:create:stone_types/tuff>.contains(createItem) |
        <tag:items:create:stone_types/asurine>.contains(createItem) |
        <tag:items:create:stone_types/crimsite> .contains(createItem) |
        <tag:items:create:stone_types/limestone>.contains(createItem) |
        <tag:items:create:stone_types/ochrum>.contains(createItem) |
        <tag:items:create:stone_types/scoria>.contains(createItem) |
        <tag:items:create:stone_types/veridium>.contains(createItem) |
        <tag:items:create:stone_types/scorchia>.contains(createItem) | 
        <tag:items:create:seats>.contains(createItem) 
    ) {
        <tag:items:crafttweaker:universal>.add(createItem);
    }
}

<tag:items:crafttweaker:universal>.add(<item:create:tree_fertilizer>);
<tag:items:crafttweaker:universal>.add(<item:create:crafting_blueprint>);
<tag:items:crafttweaker:universal>.add(<item:create:rose_quartz>);
<tag:items:crafttweaker:universal>.add(<item:create:polished_rose_quartz>);
<tag:items:crafttweaker:universal>.add(<item:create:rose_quartz_lamp>);
<tag:items:crafttweaker:universal>.add(<item:create:diving_boots>);
<tag:items:crafttweaker:universal>.add(<item:create:sand_paper>);
<tag:items:crafttweaker:universal>.add(<item:create:red_sand_paper>);
<tag:items:crafttweaker:universal>.add(<item:create:bar_of_chocolate>);
<tag:items:crafttweaker:universal>.add(<item:create:sweet_roll>);
<tag:items:crafttweaker:universal>.add(<item:create:chocolate_glazed_berries>);
<tag:items:crafttweaker:universal>.add(<item:create:honeyed_apple>);
<tag:items:crafttweaker:universal>.add(<item:create:builders_tea>);
<tag:items:crafttweaker:universal>.add(<item:create:scoria>);
<tag:items:crafttweaker:universal>.add(<item:create:asurine>);
<tag:items:crafttweaker:universal>.add(<item:create:crimsite>);
<tag:items:crafttweaker:universal>.add(<item:create:ochrum>);
<tag:items:crafttweaker:universal>.add(<item:create:scorchia>);
<tag:items:crafttweaker:universal>.add(<item:create:veridium>);
<tag:items:crafttweaker:universal>.add(<item:create:limestone>);

//Create SA Allowed Items
<tag:items:crafttweaker:universal>.add(<item:create_sa:brass_helmet>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:brass_chestplate>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:brass_leggings>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:brass_boots>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:brass_sword>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:brass_pickaxe>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:brass_shovel>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:brass_axe>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:brass_hoe>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:zinc_helmet>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:zinc_chestplate>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:zinc_leggings>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:zinc_boots>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:zinc_sword>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:zinc_pickaxe>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:zinc_shovel>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:zinc_axe>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:zinc_hoe>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:copper_helmet>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:copper_chestplate>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:copper_leggings>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:copper_boots>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:copper_sword>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:copper_pickaxe>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:copper_shovel>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:copper_axe>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:copper_hoe>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:heap_of_experience>);
<tag:items:crafttweaker:universal>.add(<item:create_sa:copper_magnet>);
// <tag:items:crafttweaker:universal>.add();
// <tag:items:crafttweaker:universal>.add();

//Tinkers Construct Allowed Items
for itemDef in tconstructItemList {
    val tconItem = itemDef.defaultInstance;
    if (
        <tag:items:forge:ores>.contains(tconItem) | 
        <tag:items:forge:raw_materials>.contains(tconItem) | 
        <tag:items:forge:heads>.contains(tconItem) | 
        <tag:items:tconstruct:congealed_slime>.contains(tconItem) | 
        <tag:items:tconstruct:slime_block>.contains(tconItem) | 
        (<tag:items:tconstruct:tables>.contains(tconItem) & !<tag:items:forge:workbenches>.contains(tconItem)) | 
        <item:tconstruct:bloodshroom_button>.contains(tconItem) | 
        <tag:items:forge:slimeballs>.contains(tconItem) | 
        <tag:items:tconstruct:parts>.contains(tconItem) | 
        <tag:items:tconstruct:modifiable>.contains(tconItem)


    ) {
        <tag:items:crafttweaker:universal>.add(tconItem);
    }
}
<tag:items:crafttweaker:universal>.add(<item:tconstruct:pattern>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:part_chest>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:quartz_shuriken>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:flint_shuriken>);

<tag:items:crafttweaker:universal>.add(<item:tconstruct:small_ender_slime_crystal_bud>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:medium_ender_slime_crystal_bud>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:large_ender_slime_crystal_bud>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ender_slime_crystal_cluster>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ender_slime_crystal>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:budding_ender_slime_crystal>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ender_slime_crystal_block>);

<tag:items:crafttweaker:universal>.add(<item:tconstruct:small_sky_slime_crystal_bud>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:medium_sky_slime_crystal_bud>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:large_sky_slime_crystal_bud>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:sky_slime_crystal_cluster>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:sky_slime_crystal>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:budding_sky_slime_crystal>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:sky_slime_crystal_block>);

<tag:items:crafttweaker:universal>.add(<item:tconstruct:small_ichor_slime_crystal_bud>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:medium_ichor_slime_crystal_bud>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:large_ichor_slime_crystal_bud>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ichor_slime_crystal_cluster>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ichor_slime_crystal>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:budding_ichor_slime_crystal>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ichor_slime_crystal_block>);

<tag:items:crafttweaker:universal>.add(<item:tconstruct:small_earth_slime_crystal_bud>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:medium_earth_slime_crystal_bud>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:large_earth_slime_crystal_bud>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:earth_slime_crystal_cluster>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:earth_slime_crystal>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:budding_earth_slime_crystal>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:earth_slime_crystal_block>);

<tag:items:crafttweaker:universal>.add(<item:tconstruct:sky_slime_fern>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:sky_slime_tall_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:sky_slime_sapling>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:sky_slime_leaves>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:sky_vanilla_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:sky_earth_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:sky_ichor_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:sky_ender_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:sky_sky_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:sky_slime_dirt>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:sky_slime_grass_seeds>);

<tag:items:crafttweaker:universal>.add(<item:tconstruct:earth_slime_fern>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:earth_slime_tall_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:earth_slime_sapling>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:earth_slime_leaves>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:earth_vanilla_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:earth_earth_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:earth_ichor_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:earth_ender_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:earth_sky_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:earth_slime_dirt>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:earth_slime_grass_seeds>);

<tag:items:crafttweaker:universal>.add(<item:tconstruct:ender_slime_fern>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ender_slime_tall_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ender_slime_sapling>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ender_slime_leaves>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ender_vanilla_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ender_earth_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ender_ichor_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ender_ender_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ender_sky_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ender_slime_dirt>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ender_slime_grass_seeds>);

<tag:items:crafttweaker:universal>.add(<item:tconstruct:blood_slime_fern>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:blood_slime_tall_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:blood_slime_sapling>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:blood_slime_leaves>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:blood_vanilla_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:blood_earth_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:blood_ichor_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:blood_ender_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:blood_sky_slime_grass>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:ichor_slime_dirt>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:blood_slime_grass_seeds>);

<tag:items:crafttweaker:universal>.add(<item:tconstruct:ender_slime_vine>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:sky_slime_vine>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:travelers_helmet>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:travelers_chestplate>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:travelers_leggings>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:travelers_boots>);

<tag:items:crafttweaker:universal>.add(<item:tconstruct:cobalt_ingot>);
<tag:items:crafttweaker:universal>.add(<item:tconstruct:materials_and_you>);


//Tcon Reforged Allowed Items
for itemDef in treforgedItemList {
    val trefItem = itemDef.defaultInstance;
    if (
        <tag:items:tconstruct:parts>.contains(trefItem) | 
        <tag:items:tconstruct:modifiable>.contains(trefItem)
    ) {
        <tag:items:crafttweaker:universal>.add(trefItem);
    }
}


<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:red_beryl_gem>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:red_beryl_block>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:red_beryl_ore>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:deepslate_red_beryl_ore>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:aluminum_ingot>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:aluminum_nugget>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:raw_aluminum>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:aluminum_block>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:raw_aluminum_block>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:aluminum_ore>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:deepslate_aluminum_ore>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:epidote_gem>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:epidote_block>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:deepslate_epidote_ore>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:hureaulite_gem>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:hureaulite_block>);
<tag:items:crafttweaker:universal>.add(<item:tinkers_reforged:deepslate_hureaulite_ore>);

//Ars Nouveau Allowed Items

//NOTE: looped through tags in a lot of tags where only 1 item fits. Will fix "soon."
for itemDef in arsItemList {
    val arsItem = itemDef.defaultInstance;
    if (
        <tag:items:ars_nouveau:wilden_drop>.contains(arsItem) | 
        <tag:items:forge:logs/archwood>.contains(arsItem) | 
        <tag:items:forge:planks/archwood>.contains(arsItem) | 
        <tag:items:minecraft:saplings>.contains(arsItem) | 
        <tag:items:minecraft:wooden_doors>.contains(arsItem) | 
        <tag:items:forge:fences>.contains(arsItem) | 
        <tag:items:minecraft:wooden_trapdoors>.contains(arsItem) | 
        <tag:items:minecraft:wooden_pressure_plates>.contains(arsItem) | 
        <tag:items:minecraft:wooden_slabs>.contains(arsItem) | 
        <tag:items:minecraft:wooden_stairs>.contains(arsItem) | 
        <tag:items:minecraft:wooden_buttons>.contains(arsItem)

    ) {
        <tag:items:crafttweaker:universal>.add(arsItem);
    }
}
<tag:items:crafttweaker:universal>.add(<item:ars_nouveau:red_archwood_leaves>);
<tag:items:crafttweaker:universal>.add(<item:ars_nouveau:green_archwood_leaves>);
<tag:items:crafttweaker:universal>.add(<item:ars_nouveau:purple_archwood_leaves>);
<tag:items:crafttweaker:universal>.add(<item:ars_nouveau:blue_archwood_leaves>);
<tag:items:crafttweaker:universal>.add(<item:ars_nouveau:source_berry>);
<tag:items:crafttweaker:universal>.add(<item:ars_nouveau:worn_notebook>);


<tag:items:crafttweaker:universal>.add(<item:ars_elemental:yellow_archwood_sapling>);
<tag:items:crafttweaker:universal>.add(<item:ars_elemental:yellow_archwood_leaves>);
<tag:items:crafttweaker:universal>.add(<item:ars_elemental:stripped_yellow_archwood>);
<tag:items:crafttweaker:universal>.add(<item:ars_elemental:yellow_archwood>);
<tag:items:crafttweaker:universal>.add(<item:ars_elemental:yellow_archwood_log>);
<tag:items:crafttweaker:universal>.add(<item:ars_elemental:stripped_yellow_archwood_log>);
<tag:items:crafttweaker:universal>.add(<item:ars_elemental:spore_blossom_up>);
