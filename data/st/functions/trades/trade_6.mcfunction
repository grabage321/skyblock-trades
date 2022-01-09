# This pack adds a lava bucket, crimson nylium, and warped nylium as tier 6 trades



# Generate a random number from 0-8 (9 numbers)
scoreboard players set @e[tag=st_rand_1] st_rand_max 9
function st:rand/rand
#tellraw @a ["t6: ",{"score":{"name":"@e[tag=st_rand_2,limit=1]","objective":"st_rand"}}]

# Replace the last trade slot if a random replacement was selected
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 0 as @e[type=wandering_trader,tag=!st_complete] run data modify entity @s Offers.Recipes[5] set value {maxUses:1,buyB:{id:"minecraft:air",Count:1b},buy:{id:"minecraft:emerald",Count:16b},sell:{id:"minecraft:lava_bucket",Count:1b},xp:1,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b}
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 1 as @e[type=wandering_trader,tag=!st_complete] run data modify entity @s Offers.Recipes[5] set value {maxUses:6,buyB:{id:"minecraft:air",Count:1b},buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:crimson_nylium",Count:1b},xp:1,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b}
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 2 as @e[type=wandering_trader,tag=!st_complete] run data modify entity @s Offers.Recipes[5] set value {maxUses:6,buyB:{id:"minecraft:air",Count:1b},buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:warped_nylium",Count:1b},xp:1,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1b}