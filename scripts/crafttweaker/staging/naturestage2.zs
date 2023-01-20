import mods.recipestages.Recipes;
import mods.itemstages.ItemStages;
import mods.gamestages.StageHelper;
import crafttweaker.api.mod.Mod;
import crafttweaker.api.mod.Mods;
import crafttweaker.api.bracket.BracketHandlers;
import mods.jei.JEI;
import crafttweaker.api.event.entity.player.interact.RightClickItemEvent;
import crafttweaker.api.events.CTEventManager;
import mods.gamestages.events.GameStageAdded;
import crafttweaker.api.text.Component;
import crafttweaker.api.text.TextComponent;
import stdlib.List;
import mods.itemstages.ItemStages;

val mythicItemList = loadedMods.mythicbotany.getItems();
var mythicItemListNames as stdlib.List<string>;


for itemDef in mythicItemList {
    var item = itemDef.defaultInstance;
    val restrictItem = ItemStages.restrict(item,"naturestage2");
    restrictItem.preventInventory(false);
    restrictItem.preventAttacking(false);
    restrictItem.preventPickup(false);
    restrictItem.preventUsing(true);
    restrictItem.hiddenName("Stranger Botanics");
    mods.recipestages.Recipes.setRecipeStage("naturestage2", item);
}
 

 CTEventManager.register<GameStageAdded>((event) => {
    val stage = event.stage;
    val player = event.player;
    if (stage == "expertmode") {
        if (player.hasGameStage("naturestage1")) {
            player.addGameStage("naturestage2");
        }
    }
});
