import mods.recipestages.Recipes;
import mods.itemstages.ItemStages;
import mods.gamestages.StageHelper;
import crafttweaker.api.mod.Mod;
import crafttweaker.api.mod.Mods;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jei.JEI;
import mods.itemstages.ItemStages;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.text.Component;
import crafttweaker.api.event.item.ItemTossEvent;
import crafttweaker.api.event.entity.player.ItemPickupEvent;
import crafttweaker.api.world.Level;
import crafttweaker.api.world.ServerLevel;
import stdlib.List;

val tconstructItemList = loadedMods.tconstruct.getItems();
val treforgeditemList = loadedMods.tinkers_reforged.getItems();
var tconstructItemListNames as stdlib.List<string>;


for itemDef in tconstructItemList {
    var item = itemDef.defaultInstance;
    if (!<tag:items:crafttweaker:universal>.contains(item)) {
        val restrictItem = ItemStages.restrict(item,"expertmode");
        restrictItem.preventInventory(false);
        restrictItem.preventAttacking(false);
        restrictItem.preventPickup(false);
        restrictItem.preventUsing(true);
        restrictItem.hiddenName("Strange Metallurgy");
        mods.recipestages.Recipes.setRecipeStage("expertmode", item);

     }
 }

for itemDef in treforgeditemList {
    var ritem = itemDef.defaultInstance;
    if (!<tag:items:crafttweaker:universal>.contains(ritem)) {
        val rrestrictItem = ItemStages.restrict(ritem,"expertmode");
        rrestrictItem.preventInventory(false);
        rrestrictItem.preventAttacking(false);
        rrestrictItem.preventPickup(false);
        rrestrictItem.preventUsing(true);
        rrestrictItem.hiddenName("Strange Metallurgy");
        mods.recipestages.Recipes.setRecipeStage("expertmode", ritem);

     }
 }

StageHelper.grantStageOnAdvancement("cataclysm:kill_ignis", "expertstage");


