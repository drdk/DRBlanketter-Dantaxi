git pull
git add --all
git commit -m "Run build 1.0.0.12" 
git push origin
git tag "Lagt i test"
git push origin --tags
git log --pretty=oneline
