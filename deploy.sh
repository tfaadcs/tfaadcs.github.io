# create a local gh-pages branch containing the splitted output folder
git subtree split --prefix _site -b gh-pages

bundle exec jekyll build

# force the push of the gh-pages branch to the remote gh-pages branch at origin
git push -f origin gh-pages:gh-pages

# delete the local gh-pages because you will need it later
git branch -D gh-pages