import crafttweaker.api.villagers.VillagerTrades;
import crafttweaker.api.villager.MerchantOffer;

// VillagerTrades.addTrade(profession as VillagerProfession, villagerLevel as int, offerGenerator as BiFunction<Entity,Random,MerchantOffer?>)

villagerTrades.addTrade(<profession:byg:forager>, 4, (entity, random) => {
    return new MerchantOffer(<item:botania:black_lotus>, <item:botania:lexicon>, 1, 20, 5);
});