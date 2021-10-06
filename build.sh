cd ~/Projects/HHHKKKHHH.github.io/

bundle install
bundle exec jekyll build

echo "-------- ☑️ build done --------"

mkdir .cache 
mv ./_release/.git ./.cache/
rm -rf ./_release/*
cp -r ./_site/* ./_release/
touch ./_release/.nojekyll
# rm -r ./_release/.jekyll-cache
rm  ./_release/*.sh
mv ./.cache/.git ./_release/
rm -r .cache 


echo "-------- 😊 output to <_release> folder 😊 --------"

