git checkout main;
git fetch;
git pull origin main;

git remote add github git@github.com:dleurs/astrolab.git;
flutter build web --release;
