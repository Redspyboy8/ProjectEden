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
import crafttweaker.api.text.TextComponent;
import crafttweaker.api.event.item.ItemTossEvent;
import crafttweaker.api.event.entity.player.interact.RightClickBlockEvent;
import crafttweaker.api.world.Level;
import crafttweaker.api.world.ServerLevel;
import crafttweaker.api.item.IItemStack;
import stdlib.List;

 CTEventManager.register<RightClickBlockEvent>((event) => { 
    var player = event.player;
    var item = event.getItemStack() as IItemStack;
    if (!player.hasGameStage("mastermode")) {
        
        if (item.definition.defaultInstance == <item:minecraft:wither_skeleton_skull>) && (player.level.dimension == <resource:minecraft:overworld> || player.level.dimension == <resource:mythicbotany:alfeim>) 
        {
            var message = new TextComponent("The End's curse protects blessed worlds");
            message.setStyle(<constant:minecraft:formatting:italic>);
            player.sendMessage(message);
            event.cancel();
        }
    }
});