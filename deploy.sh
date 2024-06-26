# create a local gh-pages branch containing the splitted output folder
#git subtree split --prefix _site -b gh-pages

# force the push of the gh-pages branch to the remote gh-pages branch at origin
#git push -f origin gh-pages:gh-pages

# delete the local gh-pages because you will need it later
#git branch -D gh-pages

# Build the website locally
bundle exec jekyll build

# Move to the target folder
# shellcheck disable=SC2164
cd ../../tfaadcs.org/tfaadcs.github.io

# Get new version
git pull

# Copy the content from _site to the local repository tfaadcs.github.io
cp -R ../../tfaadcs.org/tfaadcs.org-src/_site/* .

# Add new files if so
git add .

# Commit
git commit -m "automatic local deployment"

# Push
git push -u origin main