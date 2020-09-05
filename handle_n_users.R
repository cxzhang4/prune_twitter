# args = commandArgs(trailingOnly = TRUE)

library(rtweet)
library(readr)

handle_n_users_file = function(n, friends_all_file, handled_users_file) {
  friends_all = read_lines(friends_all_file)
  handled_users = read_lines(handled_users_file)
  
  unhandled_users = friends_all[!(friends_all %in% handled_users)]
  
  users_to_handle = sample(unhandled_users, n)
  
  print(users_to_handle)
  
  input = ""
  while (input != "Y" && input != "N") {
    input = readline("Handle all automatically? [Y/N]")
    if (input == "Y") {
      write_lines(users_to_handle, handled_users_file, append = TRUE)
    }
    if (input == "N") {
      print("Add the handles you want to handle to handled_users.txt, one handle per line.")
    }
  }
}



