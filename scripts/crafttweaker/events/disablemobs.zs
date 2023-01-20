import mods.gamestages.StageHelper;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.EntityJoinWorldEvent;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.world.Level;
import crafttweaker.api.world.ServerLevel;
import crafttweaker.api.util.math.AABB;
import stdlib.List;

CTEventManager.register<EntityJoinWorldEvent>((event) => {
    var entity = event.getEntity();
    if (entity.getType() == <entitytype:undead_expansion:haunter>){
        event.cancel();
        //This else if statement is made to prevent a strange bug where invisible area effect clouds spawn infinitely in the Nether, immune to despawn. 
        //Aware that this is absolute duct tape. Will remove once the bug is fixed on the mod side.
    } else if (entity.getType() == <entitytype:minecraft:area_effect_cloud>) {
        var boundingBox = entity.getBoundingBox();
        if (boundingBox.getXsize() <= 5 || boundingBox.getZsize() <= 5) {
            event.cancel();
        }
        
    }
});