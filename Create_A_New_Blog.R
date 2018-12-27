
# set up git
library(usethis)
use_git()

# after restarting
library(usethis)
use_github(protocol = 'https', auth_token = Sys.getenv('GITHUB_TOKEN'))

# remove R folder
file.remove(x = 'R')

# create a new blog
library(blogdown)
install_hugo()
new_site()

# type below on terminal to add README.md
# $ echo "# This Repo is for ..." >> README.md
# $ git add .
# $ git commit -m 'Second commit'
# $ git push -u origin master

# add below to config.toml file to make automation
# PublishDir = "docs"

# finally build this site!
build_site()

