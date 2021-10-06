cd ~/Projects/HHHKKKHHH.github.io/

bundle install
bundle exec jekyll build

echo "\n-------- ☑️ build done --------\n"

mkdir .cache 
mv ./_release/.git ./.cache/
rm -rf ./_release/*
cp -r ./_site/* ./_release/
touch ./_release/.nojekyll
# rm -r ./_release/.jekyll-cache
rm  ./_release/*.sh
mv ./.cache/.git ./_release/
rm -r .cache 

echo "\n-------- ☑️ transforme to release --------\n"
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

cd ./_release/
git add .
git commit -m "Release request"
git push