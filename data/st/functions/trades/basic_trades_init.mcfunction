# Generate a random number from 0-60 (61 numbers)
scoreboard players set @e[tag=st_rand_1] st_rand_max 61
function st:rand/rand
#tellraw @a ["bti: ",{"score":{"name":"@e[tag=st_rand_2,limit=1]","objective":"st_rand"}}]

# If the number was 0, 1, or 2, run the basic trades replacement
execute if score @e[tag=st_rand_2,limit=1] st_rand matches 0..2 run function st:trades/basic_trades