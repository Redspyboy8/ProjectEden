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

val botaniaItemList = loadedMods.botania.getItems();
var botaniaItemListNames as stdlib.List<string>;

mods.recipestages.Recipes.setPackageStages("patchouli", "naturestage1");

for itemDef in botaniaItemList {
    var item = itemDef.defaultInstance;
    if !(<tag:items:crafttweaker:universal>.contains(item)) {
        val restrictItem = ItemStages.restrict(item,"naturestage1");
        restrictItem.preventInventory(false);
        restrictItem.preventAttacking(false);
        restrictItem.preventPickup(false);
        restrictItem.preventUsing(true);
        restrictItem.hiddenName("Strange Botanics");
        mods.recipestages.Recipes.setRecipeStage("naturestage1", item);

     }
 }
 mods.recipestages.Recipes.setRecipeStage("naturestage1",<item:botania:lexicon>);

  CTEventManager.register<RightClickItemEvent>((event) => {
    val player = event.player;
    val item = event.getItemStack(); 
    if (!player.level.isClientSide() && item == <item:botania:lexicon>) {
        if (!player.hasGameStage("naturestage1")) {
            player.addGameStage("naturestage1");
            var message = new TextComponent("The secrets of botany have been revealed!");
            message.setStyle(<constant:minecraft:formatting:green>);
            message.setStyle(<constant:minecraft:formatting:italic>);
            player.sendMessage(message);
        }
    }
 });

 

 mods.recipestages.Recipes.setPrintContainers(true); //Debug

