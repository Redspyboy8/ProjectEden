import crafttweaker.api.villagers.VillagerTrades;
import crafttweaker.api.villager.MerchantOffer;

// VillagerTrades.addTrade(profession as VillagerProfession, villagerLevel as int, offerGenerator as BiFunction<Entity,Random,MerchantOffer?>)

villagerTrades.addTrade(<profession:domesticationinnovation:animal_tamer>, 2, (entity, random) => {
    return new MerchantOffer(<item:minecraft:emerald>, <item:sprout:peanut> * 4, 16, 20, 0.8);
});

villagerTrades.addTrade(<profession:domesticationinnovation:animal_tamer>, 2, (entity, random) => {
    return new MerchantOffer(<item:minecraft:emerald> * 3, <item:alexsmobs:animal_dictionary>, 1, 20, 0.8);
});