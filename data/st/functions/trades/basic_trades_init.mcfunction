# This is a preparation step that runs additional commands only if a slot 1-5 trade should be replaced



# Generate a random number from 0-64 (65 numbers)
# This number comes from the number of vanilla slot 1-5 trades (62) plus the custom trades added by this pack (3)
scoreboard players set @e[tag=st_rand_1] st_rand_max 64
function st:rand/rand

# If the random number is 0, 1, or 2, run the slot 1-5 trade replacement function
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 0..2 run function st:trades/basic_trades