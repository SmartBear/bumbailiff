mkdir -p tmp/git/one-zero-day-todo
cd tmp/git/one-zero-day-todo
git init --quiet .
echo "// TODO: 0-day old TODO" > file.js
git commit --quiet --allow-empty -m "Commit"
bumbailiff
echo $?
