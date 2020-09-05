source("get_friends.R")
source("handle_n_users.R")
source("get_likes.R")

library(rtweet)
library(readr)

gen_friends("zhang_carson")

handle_n_users_file(27, "friends_all_zhang_carson.txt", "handled_users_zhang_carson.txt")

# handled_n_