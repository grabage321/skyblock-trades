# Run if a new trader appears
execute if entity @e[type=wandering_trader,tag=!st_complete] run function st:new_trader