import mods.recipestages.Recipes;
import mods.itemstages.ItemStages;
import mods.gamestages.StageHelper;
import crafttweaker.api.mod.Mod;
import crafttweaker.api.mod.Mods;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jei.JEI;
import crafttweaker.api.event.entity.player.interact.RightClickItemEvent;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.text.Component;
import crafttweaker.api.text.TextComponent;
import stdlib.List;
import mods.itemstages.ItemStages;


import stdlib.List;

val arsItemList = loadedMods.ars_nouveau.getItems();
val arsElemItemList = loadedMods.ars_elemental.getItems();
val arsInstrumItemList = loadedMods.ars_instrumentum.getItems();


for itemDef in arsItemList {
    var item = itemDef.defaultInstance;
    if (!<tag:items:crafttweaker:universal>.contains(item)) {
        val restrictItem = ItemStages.restrict(item,"magicstage1");
        restrictItem.preventInventory(false);
        restrictItem.preventAttacking(false);
        restrictItem.preventPickup(false);
        restrictItem.preventUsing(false);
        restrictItem.hiddenName("Strange Mystics");
        mods.recipestages.Recipes.setRecipeStage("magicstage1", item);

     }
 }

 for itemDef in arsElemItemList {
    var eitem = itemDef.defaultInstance;
    if (!<tag:items:crafttweaker:universal>.contains(eitem)) {
        val eRestrictItem = ItemStages.restrict(eitem,"magicstage1");
        eRestrictItem.preventInventory(false);
        eRestrictItem.preventAttacking(false);
        eRestrictItem.preventPickup(false);
        eRestrictItem.preventUsing(false);
        eRestrictItem.hiddenName("Strange Mystics");
        mods.recipestages.Recipes.setRecipeStage("magicstage1", eitem);

     }
 }

 for itemDef in arsInstrumItemList {
    var iItem = itemDef.defaultInstance;
    if (!<tag:items:crafttweaker:universal>.contains(iItem)) {
        val iRestrictItem = ItemStages.restrict(iItem,"magicstage1");
        iRestrictItem.preventInventory(false);
        iRestrictItem.preventAttacking(false);
        iRestrictItem.preventPickup(false);
        iRestrictItem.preventUsing(false);
        iRestrictItem.hiddenName("Strange Mystics");
        mods.recipestages.Recipes.setRecipeStage("magicstage1", iItem);

     }
 }

mods.recipestages.Recipes.setRecipeStage("magicstage1",<item:ars_nouveau:worn_notebook>);

CTEventManager.register<RightClickItemEvent>((event) => {
    val player = event.player;
    val item = event.getItemStack(); 
    if (!player.level.isClientSide() && item == <item:ars_nouveau:worn_notebook>) {
        if (!player.hasGameStage("magicstage1")) {
            player.addGameStage("magicstage1");
            var message = new TextComponent("The secrets of magic have been revealed!");
            message.setStyle(<constant:minecraft:formatting:green>);
            message.setStyle(<constant:minecraft:formatting:italic>);
            player.sendMessage(message);
        }
    }
 });
