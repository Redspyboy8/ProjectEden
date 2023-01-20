import mods.gamestages.StageHelper;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.PlayerLoggedInEvent;
import crafttweaker.api.world.Level;
import crafttweaker.api.world.ServerLevel;
import stdlib.List;


CTEventManager.register<PlayerLoggedInEvent>((event) => {
    var player = event.player;
    if (!player.level.isClientSide) {
        var level = player.level as ServerLevel;
        if (!player.hasGameStage("expertmode")) {
            level.server.executeCommand("improvedmobs difficulty player @p set 50");
        } else {
            level.server.executeCommand("improvedmobs difficulty player @p set 75");
        }
        
    }
});