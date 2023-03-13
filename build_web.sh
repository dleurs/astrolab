git checkout main;
git fetch;
git pull origin main;

git remote add github git@github.com:dleurs/astrolab.git;
flutter build web --release; # web/index.html   <base href="/astrolab/">
rm -rf docs;
cp -R web docs;
git add -A;
git commit -m "New web release";
git push github main;

# Wait 2 minuts and visit  https://dleurs.github.io/astrolab/

git remote remove github;