import mods.gamestages.StageHelper;
import crafttweaker.api.mod.Mod;
import crafttweaker.api.mod.Mods;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jei.JEI;

//Removes Categories From JEI, might back later.

mods.jei.JEI.hideCategory("create:automatic_packing");
mods.jei.JEI.hideCategory("create:automatic_shaped");
mods.jei.JEI.hideCategory("create:automatic_shapeless");
mods.jei.JEI.hideCategory("jeresources:enchantment");



for item in loadedMods.tconstruct.getItems() {
    if (<tag:items:tconstruct:modifiable/melee>.contains(item.defaultInstance) | 
        <tag:items:tconstruct:parts>.contains(item.defaultInstance)) {
        JEI.hideIngredient(item.defaultInstance);
    }
}

for titem in loadedMods.tinkers_reforged.getItems() {
    if (<tag:items:tconstruct:modifiable/melee>.contains(titem.defaultInstance) | 
        <tag:items:tconstruct:parts>.contains(titem.defaultInstance)) {
        JEI.hideIngredient(titem.defaultInstance);
    }
}

for citem in loadedMods.castle_in_the_sky.getItems() {
    JEI.hideIngredient(citem.defaultInstance);
}

for vItem in loadedMods.valkyrienskies.getItems() {
    JEI.hideIngredient(vItem.defaultInstance);
}

for item in loadedMods.titanium.getItems() {
    JEI.hideIngredient(item.defaultInstance);
}

for item in loadedMods.structure_gel.getItems() {
    JEI.hideIngredient(item.defaultInstance);
}


for item in Constants.disabledItem {
    JEI.hideIngredient(item);
}








