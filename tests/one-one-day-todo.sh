if [ "$(uname)" = "Linux" ] ; then
    yesterday=$(date --date="1 day ago" -R)
else
    yesterday=$(date -v -1d) # OSX/BSD only!
fi
export GIT_AUTHOR_NAME="Daisy Developer"
export GIT_AUTHOR_EMAIL="daisy@developer.com"
export GIT_AUTHOR_DATE="$yesterday"
mkdir -p tmp/git/one-zero-day-todo
cd tmp/git/one-zero-day-todo
git init --quiet .
git commit --quiet -m "Initial commit" --allow-empty
echo "// TODO: 1-day old TODO" > file.js
git add .
git commit --quiet -m "Commit"
bumbailiff
echo $?
