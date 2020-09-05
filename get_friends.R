library(rtweet)
library(readr)

# whichever user you want to analyze
gen_friends = function(username) {
  friends = (get_friends(username)$user_id %>% lookup_users())$screen_name
  
  friends_file_name = paste("friends_all_", username, ".txt", sep = "")
  
  write_lines(friends, friends_file_name, append = FALSE)
  
  handled_users_file_name = paste("handled_users_", username, ".txt", sep = "")
  
  file.create(handled_users_file_name)
}
