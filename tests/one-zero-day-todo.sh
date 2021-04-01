mkdir -p tmp/git/one-zero-day-todo
cd tmp/git/one-zero-day-todo
git init --quiet .
git commit --quiet -m "Initial commit" --allow-empty
echo "// TODO: 0-day old TODO" > file.js
git add .
git commit --quiet --allow-empty -m "Commit"
bumbailiff
echo $?
