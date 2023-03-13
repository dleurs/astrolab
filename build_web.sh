git checkout main;
git fetch;
git pull origin main;

git remote add github git@github.com:dleurs/astrolab.git;
git push github main --force;

flutter build web --release; # web/index.html   <base href="/astrolab/">
trash docs;
mv build/web docs;
git add -A;
git commit -m "New web release";
git push github main;

# Wait 2 minuts and visit  https://dleurs.github.io/astrolab/

git remote remove github;

