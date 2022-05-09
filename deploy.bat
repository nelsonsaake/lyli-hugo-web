hugo
git add .
git commit -m "chore: git commit everything before deploy"
git push -u origin main

@REM $ git config --global http.version HTTP/1.1
@REM After it push was ok and I have changed HTTP version to 2 again:
@REM $ git config --global http.version HTTP/2