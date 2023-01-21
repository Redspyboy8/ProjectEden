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

val createItemList = loadedMods.create.getItems();
val create_saItemList = loadedMods.create_sa.getItems();
var createItemListNames as stdlib.List<string>;

//TODO: Condense to 1 for-loop for my own sanity
for itemDef in createItemList {
    var item = itemDef.defaultInstance;
    if (!<tag:items:crafttweaker:universal>.contains(item)) {
        val restrictItem = ItemStages.restrict(item,"engineerstage1");
        restrictItem.preventInventory(false);
        restrictItem.preventAttacking(false);
        restrictItem.preventPickup(false);
        restrictItem.preventUsing(true);
        restrictItem.hiddenName("Strange Mechanics");
        mods.recipestages.Recipes.setRecipeStage("engineerstage1", item);

     }
 }

for itemDef in create_saItemList {
    var citem = itemDef.defaultInstance;
    if (!<tag:items:crafttweaker:universal>.contains(citem)) {
        val crestrictItem = ItemStages.restrict(citem,"engineerstage1");
        crestrictItem.preventInventory(false);
        crestrictItem.preventAttacking(false);
        crestrictItem.preventPickup(false);
        crestrictItem.preventUsing(true);
        crestrictItem.hiddenName("Strange Mechanics");
        mods.recipestages.Recipes.setRecipeStage("engineerstage1", citem);

     }
 } 

 CTEventManager.register<RightClickItemEvent>((event) => {
    val player = event.player;
    val item = event.getItemStack(); 
    if (!player.level.isClientSide() && item == <item:contenttweaker:tinker_notes>) {
        if (!player.hasGameStage("engineerstage1")) {
            player.addGameStage("engineerstage1");
            var message = new TextComponent("The tinkerer's secrets have been revealed!");
            message.setStyle(<constant:minecraft:formatting:italic>);
            player.sendMessage(message);
        }
    }
 });


