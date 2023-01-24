#priority 101

import stdlib.List;
import crafttweaker.api.item.IItemStack;


public class Constants {
    //List of items that are not available in-ggame
    public static val disabledItem as IItemStack[] = [
        <item:endrem:witch_pupil>,
        <item:endrem:undead_soul>,
        <item:endrem:exotic_eye>,
        <item:endrem:witch_eye>,
        <item:sophisticatedbackpacks:inception_upgrade>,
        <item:farmersdelight:rope>,
        <item:quark:rope>,
        <item:undead_expansion:ectoplasm>,
        <item:tconstruct:clear_item_frame>,
        <item:reliquary:glowing_bread>,
        <item:undead_expansion:hollow_spawner>,
        <item:aquaculture:wooden_fillet_knife>,
        <item:aquaculture:stone_fillet_knife>,
        <item:aquaculture:iron_fillet_knife>,
        <item:aquaculture:gold_fillet_knife>,
        <item:aquaculture:diamond_fillet_knife>,
        <item:meetyourfight:fossil_bait>,
        <item:meetyourfight:haunted_bell>,
        <item:meetyourfight:devils_ante>,
        <item:buddycards:buddysteel_helmet>, //Buddysteel gear to be removed due to not really having a purpose
        <item:buddycards:buddysteel_chestplate>,
        <item:buddycards:buddysteel_leggings>,
        <item:buddycards:buddysteel_boots>,
        <item:buddycards:buddysteel_sword>,
        <item:buddycards:buddysteel_shovel>,
        <item:buddycards:buddysteel_pickaxe>,
        <item:buddycards:buddysteel_hoe>,
        <item:buddycards:buddysteel_axe>,
        <item:warden_and_sculk:recovery_compass>,
        <item:undead_expansion:creeper_husk>,
        <item:undead_expansion:impact_grenade>,
        <item:witherstormmod:super_tnt>, //Disabled due to bug with Valkreian ships
        <item:tconstruct:crafting_station> //Disabled until RecipeStages crash is fixed
    ];
}