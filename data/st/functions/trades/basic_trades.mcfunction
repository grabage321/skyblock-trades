# Store a temporary trade in storage st_basic_trade
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 0 unless entity @e[type=wandering_trader,tag=!st_complete,tag=st_bt0] run data modify storage st_basic_trade t set value {maxUses:12,buyB:{id:"minecraft:air",Count:1b},buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:nether_wart",Count:1b},xp:1,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b}
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 1 unless entity @e[type=wandering_trader,tag=!st_complete,tag=st_bt1] run data modify storage st_basic_trade t set value {maxUses:12,buyB:{id:"minecraft:air",Count:1b},buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:sweet_berries",Count:1b},xp:1,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b}
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 2 unless entity @e[type=wandering_trader,tag=!st_complete,tag=st_bt2] run data modify storage st_basic_trade t set value {maxUses:8,buyB:{id:"minecraft:air",Count:1b},buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:chorus_flower",Count:1b},xp:1,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b}

# If there should be a replacement, add a tag to the trader to avoid repeat trade replacements
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 0 run tag @e[type=wandering_trader,tag=!st_complete] add st_bt0
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 1 run tag @e[type=wandering_trader,tag=!st_complete] add st_bt1
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 2 run tag @e[type=wandering_trader,tag=!st_complete] add st_bt2

# Generate another random number from 0-4 (5 numbers)
scoreboard players set @e[tag=st_rand_1] st_rand_max 5
function st:rand/rand
#tellraw @a ["bt: ",{"score":{"name":"@e[tag=st_rand_2,limit=1]","objective":"st_rand"}}]

# Run trade replacement (random slot based on the random number previously generated)
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 0 as @e[type=wandering_trader,tag=!st_complete] run data modify entity @s Offers.Recipes[0] set from storage st_basic_trade t
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 1 as @e[type=wandering_trader,tag=!st_complete] run data modify entity @s Offers.Recipes[1] set from storage st_basic_trade t
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 2 as @e[type=wandering_trader,tag=!st_complete] run data modify entity @s Offers.Recipes[2] set from storage st_basic_trade t
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 3 as @e[type=wandering_trader,tag=!st_complete] run data modify entity @s Offers.Recipes[3] set from storage st_basic_trade t
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 4 as @e[type=wandering_trader,tag=!st_complete] run data modify entity @s Offers.Recipes[4] set from storage st_basic_trade t

# Clear the data storage st_basic_trade
data remove storage st_basic_trade t