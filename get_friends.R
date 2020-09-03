library(rtweet)
library(readr)

# whichever user you want to analyze
username = "zhang_carson"

friends = (get_friends(username)$user_id %>% lookup_users())$screen_name

write_lines(friends, "friends_all.txt")
