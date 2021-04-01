while read line
do
  echo $line \
    | sed -r "s/ [a-f0-9]{8} / <a-commit-ref> /g" \
    | sed -r "s/ [0-9]{10} [-+][0-9]{4} / <a-timestamp> /g"
done
