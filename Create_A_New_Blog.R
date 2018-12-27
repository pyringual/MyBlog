
library(usethis)
use_git()
use_github(protocol = 'https', auth_token = Sys.getenv('GITHUB_TOKEN'))

# remove R folder
file.remove(x = 'R')

library(blogdown)
install_hugo()
new_site()

# type below on terminal to add README.md
# $ echo "# This Repo is for ..." >> README.md
# $ git add .
# $ git commit -m 'Second commit'
# $ git push -u origin master

# change folder name 'public' to 'docs' and commit, push!
# then, move to 'Github Pages' Source and select 'master branch /docs folder'


# add below to config.toml file to make automation
# PublishDir = "docs"

# fix some lines!!

build_site()

