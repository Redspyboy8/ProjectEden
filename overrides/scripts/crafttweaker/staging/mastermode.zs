import mods.gamestages.StageHelper;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.text.Component;
import crafttweaker.api.text.TextComponent;
import crafttweaker.api.event.entity.player.ItemPickupEvent;
import crafttweaker.api.world.Level;
import crafttweaker.api.world.ServerLevel;

 CTEventManager.register<ItemPickupEvent>((event) => { 
    if (!event.player.level.isClientSide() && event.getStack() == <item:minecraft:dragon_egg>) {
        var player = event.player;
        if (!player.hasGameStage("mastermode")) {
            player.addGameStage("mastermode");
            var message = new TextComponent("Wither Skulls may now be placed in the overworld.");
            message.setStyle(<constant:minecraft:formatting:italic>);
            player.sendMessage(message);
        }
    }
 });