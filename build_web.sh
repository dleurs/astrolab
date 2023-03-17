git checkout main;
git fetch;
git pull origin main;

git remote add github git@github.com:dleurs/astrolab.git;

flutter build web --release --web-renderer html; # web/index.html   <base href="/astrolab/">
trash docs;
mv build/web docs;
git add -A;
git commit -m "New web release";
git push github main --force;

# Wait 2 minuts and visit  https://dleurs.github.io/astrolab/

git remote remove github;
git reset --hard main;

