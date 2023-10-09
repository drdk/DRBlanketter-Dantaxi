git pull
git add --all
git commit -m "Run build 1.0.0.6" 
git push origin
git tag "1.0.0.6"
git push origin --tags
git log --pretty=oneline
