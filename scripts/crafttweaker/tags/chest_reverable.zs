import mods.recipestages.Recipes;
import mods.itemstages.ItemStages;
import mods.gamestages.StageHelper;
import crafttweaker.api.mod.Mod;
import crafttweaker.api.mod.Mods;
import crafttweaker.api.bracket.BracketHandlers;


val woodItemList = loadedMods.everycomp.getItems();

for itemDef in woodItemList {
    val woodItem = itemDef.defaultInstance;
    if (<tag:items:forge:chests>.contains(woodItem) & !<tag:items:forge:chests/trapped>.contains(woodItem)) {
        <tag:items:quark:revertable_chests>.add(woodItem);
    }
}