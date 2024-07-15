#!/usr/bin/bash
npx create-react-app my-app
cd my-app
git init
git add .
git commit -m "Commit message"
gh auth login
gh repo create Blackbird-sim --public --source=. --remote=origin
git push -u origin master
git checkout -b update_logo
code .
git status
git add .
git push -u origin update_logo
gh pr create --base master --head update_logo --title "Update logo" --body "This pr updates the logo to the propell svg icon"
git push -u origin update_logo
gh pr create --base master --head update_logo --title "Update logo" --body "This pr updates the logo to the propell svg icon"
gh pr list
gh pr merge 1