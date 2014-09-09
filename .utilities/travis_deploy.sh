# Get to the Travis build directory, configure git and clone the repo
cd $HOME
git config --global user.email "travis@travis-ci.org"
git config --global user.name "travis-ci"

# Commit and Push the Changes
git clone --quiet --branch=gh-pages https://${GH_TOKEN}@github.com/johntfoster/PGE383-AdvGeomechanics.git gh-pages > /dev/null
cd gh-pages
cp -Rf $HOME/build/johntfoster/PGE383-AdvGeomechanics/output/* .
git add -A
git commit -m "Travis CI autocommit from travis build $TRAVIS_BUILD_NUMBER"
git push -fq origin gh-pages > /dev/null
