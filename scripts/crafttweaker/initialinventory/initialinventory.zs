import mods.initialinventory.InvHandler;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.item.IItemStack;


InvHandler.addStartingItem("log", <item:patchouli:guide_book>.withTag({"patchouli:book": "patchouli:edenguide" as string}), 1,(stack as IItemStack, player as Player) as IItemStack => {
    return stack;
});