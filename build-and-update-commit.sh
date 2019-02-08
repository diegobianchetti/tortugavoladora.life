if [ "$#" -ne 1 ]; then
  echo -e "\\nUsage: sh $0 \"commint message\""
else
  cd ~/Workspace/TortugaVoladora/tortugavoladora.life
  bundle exec jekyll b
  git add .
  git commit -m "$1"
  git push origin master
  cd _site/
  git add .
  git commit -m "$1"
  git push origin master
  cd ..
fi
