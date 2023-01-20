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

val malumItemList = loadedMods.malum.getItems();
var malumItemListNames as stdlib.List<string>;


for itemDef in malumItemList {
    var item = itemDef.defaultInstance;
    if (!<tag:items:crafttweaker:universal>.contains(item)) {
        val restrictItem = ItemStages.restrict(item,"darkstage1");
        restrictItem.preventInventory(false);
        restrictItem.preventAttacking(false);
        restrictItem.preventPickup(false);
        restrictItem.preventUsing(true);
        restrictItem.hiddenName("Strange Occult Item");
        if (restrictItem == <item:malum:encyclopedia_arcana>) {
            restrictItem.hiddenName("Book of Occult Knowledge");
        }
        mods.recipestages.Recipes.setRecipeStage("darkstage1", item);

     }
}

 mods.recipestages.Recipes.setRecipeStage("darkstage1",<item:malum:encyclopedia_arcana>);

CTEventManager.register<RightClickItemEvent>((event) => {
    val player = event.player;
    val item = event.getItemStack(); 
    if (!player.level.isClientSide() && item == <item:malum:encyclopedia_arcana>) {
        if (!player.hasGameStage("darkstage1")) {
            player.addGameStage("darkstage1");
            var message = new TextComponent("The secrets of the occult have been revealed!");
            message.setStyle(<constant:minecraft:formatting:black>);
            message.setStyle(<constant:minecraft:formatting:italic>);
            player.sendMessage(message);
        }
    }
 });
 

