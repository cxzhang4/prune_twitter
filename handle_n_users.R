# args = commandArgs(trailingOnly = TRUE)

library(rtweet)
library(readr)

# n_accts = args[1]
n_accts = 10

handled_users = read_lines("handled_users.txt")

friends_all = read_lines("friends_all.txt")

unhandled_users = friends_all[!(friends_all %in% handled_users)]

users_to_handle = sample(unhandled_users, n_accts)

print(users_to_handle)

input = ""
while (input != "Y" && input != "N") {
  input = readline("Handle all automatically? [Y/N]")
  if (input == "Y") {
    write_lines(users_to_handle, "handled_users.txt", append = TRUE)
  }
  if (input == "N") {
    print("Add the handles you want to handle to handled_users.txt, one handle per line.")
  }
}

