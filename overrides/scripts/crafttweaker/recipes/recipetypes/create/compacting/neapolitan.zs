import crafttweaker.api.data.MapData;
import mods.create.CompactingManager;

<recipetype:create:compacting>.removeByName("create:compacting/chocolate");
<recipetype:create:compacting>.addJsonRecipe("compact_neapolitan_chocolate",
{
  "type": "create:compacting",
  "ingredients": [
    {
      "fluid": "create:chocolate",
      "nbt": {},
      "amount": 250
    }
  ],
  "results": [
    {
      "item": "neapolitan:chocolate_bar"
    }
  ]
}
);
