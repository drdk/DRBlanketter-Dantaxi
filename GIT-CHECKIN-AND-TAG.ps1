git pull
git add --all
git commit -m "Ændret så approver1-feltet kun bliver overskredet når blanketten er ny eller afvist" 
git push origin
git tag "1.0.0.9"
git push origin --tags
git log --pretty=oneline
