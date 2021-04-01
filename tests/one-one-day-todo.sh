yesterday=$(date -v -1d) # OSX/BSD only!
mkdir -p tmp/git/one-zero-day-todo
cd tmp/git/one-zero-day-todo
git init --quiet .
git commit --quiet -m "Initial commit" --allow-empty --date "$yesterday"
echo "// TODO: 1-day old TODO" > file.js
git add .
git commit --quiet -m "Commit" --date "$yesterday"
bumbailiff
echo $?
