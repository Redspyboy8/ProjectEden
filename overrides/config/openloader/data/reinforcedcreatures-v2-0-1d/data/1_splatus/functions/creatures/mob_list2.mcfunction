tellraw @s [{"translate":"\nClick the name of a mob to spawn it in\n","color":"yellow"}]

tellraw @s [{"translate":"Confetti Creeper ","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to Summon"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:creatures/creeper/summon"}},{"translate": " ","underlined": false},{"translate":"Winged Piglin (Crossbow)","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to Summon"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:creatures/winged_piglin/summon_crossbow"}},{"translate": "","underlined": false}]
tellraw @s [{"translate": "\n"},{"translate":"Winged Piglin (Sword)","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to Summon"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:creatures/winged_piglin/summon_sword"}},{"translate": " ","underlined": false},{"translate":"Deep Sea Squid ","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to Summon"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:creatures/deep_sea_squid/summon"}},{"translate": " ","underlined": false},{"translate":"Slime Zombie","color":"#408CFF","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"translate":"Click to Summon"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:creatures/splitingzombie/summon"}}]

tellraw @s [{"translate": "\n"},{"translate":"<-- Page 1","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Previous Page"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:creatures/mob_list"}},{"translate":"    - 2/3 -     ","color": "gray","italic": false},{"translate":"","color": "yellow"},{"translate":"Page 3 -->\n","color":"yellow","underlined":false,"hoverEvent":{"action":"show_text","contents":[{"translate":"Next Page"}]},"clickEvent":{"action":"run_command","value":"/function 1_splatus:creatures/mob_list3"}}]