# command.sh

# Step 1: Create React app
npx create-react-app blackbird-app
cd blackbird-app

# Step 2: Initialize Git and commit the code
git init
git add .
git commit -m "Initial commit"
gh repo create blackbird-cli-task --public --source=. --remote=origin --push

# Step 3: Switch branch to “update_logo”
git checkout -b update_logo


# Step 4: Replace logo and link in App.js
# Manually replace the logo in App.js:
# <img src="https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg" alt="logo" />

# Step 5: Manually replace the link in App.js:
# <a href="https://www.propelleraero.com/dirtmate/" target="_blank" rel="noopener noreferrer">
#     Learn more about DirtMate
# </a>

# Step 6: Commit and Push the Changes
git add .
git commit -m "Updated logo and link"
git push origin update_logo

# Step 7: Create a Pull Request (PR) using GitHub CLI
gh pr create --base master --head update_logo --title "Update logo and link" --body "Replaced logo and updated the link."

# Step 8: Merge the PR using GitHub CLI
gh pr merge --squash

#My github repo: 
https://github.com/duyquangbui99/blackbird-cli-task






