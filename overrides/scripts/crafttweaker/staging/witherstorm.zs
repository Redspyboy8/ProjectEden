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

val witherItemList = loadedMods.witherstormmod.getItems();
var malumItemListNames as stdlib.List<string>;


for itemDef in witherItemList {
    var item = itemDef.defaultInstance;
    if (!<tag:items:crafttweaker:universal>.contains(item)) {
        val restrictItem = ItemStages.restrict(item,"witherstorm");
        restrictItem.preventInventory(false);
        restrictItem.preventAttacking(false);
        restrictItem.preventPickup(false);
        restrictItem.preventUsing(true);
        restrictItem.hiddenName("???");
        mods.recipestages.Recipes.setRecipeStage("witherstorm", item);

     }
}

mods.recipestages.Recipes.setRecipeStage("witherstorm", <item:reliquary:alkahestry_tome>);
ItemStages.restrict(<item:reliquary:alkahestry_tome>,"witherstorm");

StageHelper.grantStageOnAdvancement("witherstormmod:main/summon_wither_storm", "witherstorm");
 

