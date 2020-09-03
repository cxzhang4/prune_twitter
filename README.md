A set of utilities to help you organize your Twitter friends.

Shows you a random sample of users followed by an account. Do whatever you want with these users: put them into lists, follow them from a new account.

## Usage

**Make sure to run all scripts interactively!!** (I use RStudio - highlight the entire thing and run).

1. Modify `get_friends.R` to use the username you're interested in. Run `get_friends.R`. You may be [prompted to authenticate](https://github.com/ropensci/rtweet#usage). This will generate `friends_all.txt`: a list of all of the accounts followed by your chosen user.

2. Modify `handle_n_users.R` to show the number of users you want shown to you. Run `handle_n_users.R`.

3. Update `handled_users.txt` if necessary. Keep the format of one username per line.

4. Repeat steps 2 and 3 whenever you want to handle more users. Repeat step 1 only if you want to update the friends list.

## Next steps

Configure command line arguments (only possible if you can run an interactive R session from the command line).

Save results from different users (e.g. I want to examine who I follow AND who Chris Albon follows, etc.).