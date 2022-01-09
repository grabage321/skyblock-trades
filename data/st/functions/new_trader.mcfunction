# Setup for random number generator (summon entities)
function st:rand/rand_init



### Trade replacement functions ###


# Brown dye should be replaced with cocoa beans
function st:trades/cocoa_beans

# The trade in the sixth slot is randomized independently
function st:trades/trade_6

# This rolls for a slot 1-5 trade replacement five times (one for each eligible slot)
function st:trades/basic_trades_init
function st:trades/basic_trades_init
function st:trades/basic_trades_init
function st:trades/basic_trades_init
function st:trades/basic_trades_init



# Add the st_complete tag to any wandering traders without it, as the are now done with
tag @e[type=wandering_trader,tag=!st_complete] add st_complete

# Kill entities used for RNG
kill @e[tag=st_rand]