# This pack adds nether wart, sweet berries, and chorus flower to the potential slot 1-5 trades



# Set up the st_basic_trade data storage with the data for one of three custom trades (UNLESS the target wandering trader already has this trade offer)
# Based on the previously generated random number, one of three trades is chosen
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 0 unless entity @e[type=wandering_trader,tag=!st_complete,nbt={Offers:{Recipes:[{sell:{id:"minecraft:nether_wart"}}]}}] run data modify storage st_basic_trade t set value {maxUses:12,buyB:{id:"minecraft:air",Count:1b},buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:nether_wart",Count:1b},xp:1,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b}
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 1 unless entity @e[type=wandering_trader,tag=!st_complete,nbt={Offers:{Recipes:[{sell:{id:"minecraft:sweet_berries"}}]}}] run data modify storage st_basic_trade t set value {maxUses:12,buyB:{id:"minecraft:air",Count:1b},buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:sweet_berries",Count:1b},xp:1,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b}
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 2 unless entity @e[type=wandering_trader,tag=!st_complete,nbt={Offers:{Recipes:[{sell:{id:"minecraft:chorus_flower"}}]}}] run data modify storage st_basic_trade t set value {maxUses:8,buyB:{id:"minecraft:air",Count:1b},buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:chorus_flower",Count:1b},xp:1,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b}

# Generate another random number from 0-4 (5 numbers)
# This number is used to determine the slot in which the replacement will occur
scoreboard players set @e[tag=st_rand_1] st_rand_max 5
function st:rand/rand

# Run trade replacement in the slot previously chosen
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 0 as @e[type=wandering_trader,tag=!st_complete] run data modify entity @s Offers.Recipes[0] set from storage st_basic_trade t
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 1 as @e[type=wandering_trader,tag=!st_complete] run data modify entity @s Offers.Recipes[1] set from storage st_basic_trade t
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 2 as @e[type=wandering_trader,tag=!st_complete] run data modify entity @s Offers.Recipes[2] set from storage st_basic_trade t
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 3 as @e[type=wandering_trader,tag=!st_complete] run data modify entity @s Offers.Recipes[3] set from storage st_basic_trade t
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 4 as @e[type=wandering_trader,tag=!st_complete] run data modify entity @s Offers.Recipes[4] set from storage st_basic_trade t

# Clear the data storage st_basic_trade
data remove storage st_basic_trade t